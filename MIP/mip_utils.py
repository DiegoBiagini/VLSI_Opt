from pathlib import Path
import re
from typing import List, Tuple
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.patches as patches


# Data class which defines an instance of the problem
class VLSI_Instance():
    n_circuits : int
    max_width : int
    circuits : List[Tuple[int, int]]
    name : str

    def __init__(self, instance_path : Path) -> None:
        with open(instance_path, "r") as f:
            lines = [s.rstrip("\n") for s in f.readlines()]

        self.name = instance_path.stem

        # First line must be an int (plate width)
        if not re.search("\d", lines[0]):
            raise ValueError("First line (plate width) is not an integer")
        self.max_width = int(lines[0])

        # Second line must be an int (number of circuits)
        if not re.search("\d", lines[1]):
            raise ValueError("Second line (number of circuits) is not an integer")
        self.n_circuits = int(lines[1])

        # There must be the given number of lines, each of them with two integers
        if len(lines) != 2+self.n_circuits:
            raise ValueError("Wrong number of circuits provided")

        self.circuits = []
        for i in range(self.n_circuits):
            if not re.search("\d \d", lines[i+2]):
                raise ValueError(f"Circuit {i+1} is incorrect")
            split = lines[i+2].split()
            self.circuits.append((int(split[0]), int(split[1])))

        # Order them according to the width, it will be useful later
        self.circuits = sorted(self.circuits, reverse=True)

    def __str__(self) -> str:
        s = f"Instance Name: {self.name}\n"
        s += f"Max Width:{self.max_width}\n"
        s += f"Circuits: {self.n_circuits}\n\n"

        for c in self.circuits:
            s += str(c) + "\n"
        return s
    
    def get_c_height(self, circuit):
        return self.circuits[circuit][1]
    
    def get_c_width(self, circuit):
        return self.circuits[circuit][0]
    
    def get_max_dim(self, circuit):
        return max(self.circuits[circuit])

    def register_solution(self, vars, cornerx_vars, cornery_vars, makespan, rotation = None):
        self.solution = {}
        self.solution["corner_x"] = [int(v.X) for v in cornerx_vars]
        self.solution["corner_y"] = [int(v.X) for v in cornery_vars]
        self.solution["makespan"] = int(makespan.X)
        if not rotation is None:
            self.solution["rotations"] = [bool(rotation[v].X) for v in rotation]
        

    def solution_to_output_format(self, rot = False) -> str:
        if self.solution is None:
            raise ValueError("No solution was registered")
        out_str = f"{self.max_width} {self.solution['makespan']}\n"
        out_str += f"{self.n_circuits}\n"
        for i in range(self.n_circuits):
            if rot:
                w = self.circuits[i][0] if not self.solution["rotations"][i] else self.circuits[i][1]
                h = self.circuits[i][1] if not self.solution["rotations"][i] else self.circuits[i][0]
            else:
                w = self.circuits[i][0]
                h = self.circuits[i][1]

            out_str += f"{w} {h} {self.solution['corner_x'][i]} {self.solution['corner_y'][i]}\n"
        out_str = out_str[:-1]
        return out_str
    
    def solution_to_txt(self, out_folder, rot = False):
        sol = self.solution_to_output_format(rot)
        with open(out_folder / (self.name + "_sol.txt"), "w") as f:
            f.writelines(sol)

    def solution_to_img(self, out_folder, rot = False):
        if self.solution is None:
            raise ValueError("No solution was registered")
        n_blocks = self.n_circuits

        if rot:
            heights = [self.circuits[i][0] if self.solution["rotations"][i] else self.circuits[i][1] for i in range(self.n_circuits)]
            widths =  [self.circuits[i][1] if self.solution["rotations"][i] else self.circuits[i][0] for i in range(self.n_circuits)]
        else:
            heights = [c[1] for c in self.circuits]
            widths = [c[0] for c in self.circuits]

        cornerx = self.solution["corner_x"]
        cornery = self.solution["corner_y"]

        max_width = self.max_width
        max_height = self.solution["makespan"]

        rects = []
        for w, h in zip(widths, heights):
            rects.append([w, h])

        corners = []
        for cx, cy in zip(cornerx, cornery):
            corners.append([cx, cy])

        cmap = plt.cm.get_cmap("hsv", n_blocks)

        rectAll = patches.Rectangle((0, 0), width=max_width, height=max_height, edgecolor="r", fill=False)
        rect = []

        for i in range(0, len(rects)):
            rect.append(patches.Rectangle((cornerx[i], cornery[i]), width=widths[i], height=heights[i], facecolor=cmap(i), edgecolor='black'))

        fig, ax = plt.subplots()
        ax.add_patch(rectAll)
        for x in rect:
            ax.add_patch(x)
        ax.set_xlim([0, max_width])
        ax.set_ylim([0, max_height])
        ticksx = np.arange(0, max_width + 1, 1)
        ticksy = np.arange(0, max_height + 1, 1)
        ax.set_xticks(ticksx)
        ax.set_yticks(ticksy)

        plt.grid()
        out_path = out_folder / (self.name + "_sol")
        fig.savefig(out_path)
    
    def get_tallest_indices(self):
        idx_height = [(self.get_c_height(idx), idx) for idx in range(self.n_circuits)]

        height_sort = sorted(idx_height)
        return [el[1] for el in height_sort]


def BL_algorithm(instance : VLSI_Instance):
    # Will contain a list like [((w,h),(x,y)), ...]
    positions_list = []

    sorted_rects = sorted(instance.circuits, reverse=True)

    max_h = int(np.sum([r[1] for r in sorted_rects]))
    taken_array = np.zeros((max_h, instance.max_width))

    while len(sorted_rects) > 0:
        r = sorted_rects.pop(0)
        for i in range(max_h):
            for j in range(instance.max_width):
                if taken_array[i][j] == 1:
                    continue
                # Containment
                if j + r[0] < instance.max_width:
                    # Emptiness
                    if not np.any(taken_array[i:i+r[1],j:j+r[0]]):
                        positions_list.append((r,(j,i)))
                        taken_array[i:i+r[1],j:j+r[0]]=1
                        break
            else:
                continue
            break
    return positions_list
