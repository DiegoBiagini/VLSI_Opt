from z3 import *

from argparse import ArgumentParser
import logging
from pathlib import Path
import numpy as np
import glob
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

    def register_solution(self, cornerx_vars, cornery_vars, makespan, rotations = None):
        self.solution = {}
        self.solution["corner_x"] = [cx for cx in cornerx_vars]
        self.solution["corner_y"] = [cy for cy in cornery_vars]
        self.solution["makespan"] = makespan

        if not rotations is None:
            self.solution["rotations"] = [r for r in rotations]

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
    copied_sort = sorted_rects.copy()

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

def SAT_solve(instance : VLSI_Instance):
    n_blocks = instance.n_circuits
    W  = instance.max_width
    width = [instance.get_c_width(i) for i in range(n_blocks)]
    height = [instance.get_c_height(i) for i in range(n_blocks)]

    s = Solver()

    naive_sol = BL_algorithm(instance)
    H = int(np.max([s[0][1]+s[1][1] for s in naive_sol]))
    lb = int(math.ceil(sum([width[i] * height[i] for i in range(n_blocks)]) / W))  #lowest H possible (to be modified)

    # Definition of variables
    px = [[Bool(f"px_{i+1}_{e}") for e in range(W)] for i in range(n_blocks)]  
    py = [[Bool(f"py_{j+1}_{f}") for f in range(H)] for j in range(n_blocks)] 

    lr = [[Bool(f"lr_{i+1}_{j+1}") if i != j else 0 for j in range(n_blocks)] for i in range(n_blocks)]
    ud = [[Bool(f"ud_{i+1}_{j+1}") if i != j else 0 for j in range(n_blocks)] for i in range(n_blocks)]
    
    rot = [Bool(f"r_{i+1}") for i in range(n_blocks)]
    
    # ph_o is true if all rectangles are packed under height o
    ph = [Bool(f"ph_{o}") for o in range(H+1)]

    #Constraints
  
    #Order encoding constraints
    for i in range(n_blocks):
      for e in range(W - width[i]):  
          for e2 in range(W-height[i]):
              if height[i] <= W:
                  s.add(Or(And(Not(rot[i]), Or(Not(px[i][e]), px[i][e+1])), And(rot[i], Not(Or(Not(px[i][e2]), px[i][e2+1])) )))
      for f in range(H - height[i]):  
          for f2 in range (H-width[i]):
              if width[i] <= H:
                  s.add(Or(And(Not(rot[i]), Or(Not(py[i][f]), py[i][f+1])), And(rot[i], Not(Or(Not(py[i][f2]), py[i][f2+1])) )))
              
    
    for o in range(H-1):
        s.add(Or(Not(ph[o]), ph[o+1]))

    # Under-height packing constraint, links ph and py
    for o in range(H):
        for i in range(n_blocks):
            s.add(Or(Not(ph[o]), py[i][o-height[i]]))
    
    # Non-overlapping constraints via 4-literal clause
    for i in range(n_blocks):  
      for j in range(i+1,n_blocks):
        if i < j: 
          s.add(Or(And(Not(rot[i]), Or(lr[i][j], lr[j][i], ud[i][j], ud[j][i])), And(rot[i], Not(Or(lr[i][j], lr[j][i], ud[i][j], ud[j][i])))))
        
    # Non-overlapping constraints via 3-literal clauses 
    '''for i in range(n_blocks):  
        for j in range(1,n_blocks):
            for e in range(W - width[i]):  
                s.add(Or(Not(lr[i][j]), px[i][e], Not(px[j][e+width[i]])))
                s.add(Or(Not(lr[j][i]), px[j][e], Not(px[i][e+width[j]])))
            for f in range(H - height[i]):  
                s.add(Or(Not(ud[i][j]), py[i][f], Not(py[j][f+height[i]])))
                s.add(Or(Not(ud[j][i]), py[j][f], Not(py[i][f+height[j]])))
                '''
    # Useful functions to express the above constraint
    def prop_e(i, j):
        res = []
        res.append([Not(px[j][width[i] - 1])])
        for e in range(W - width[i] - 1):
            res.append([px[i][e], Not(px[j][e + width[i]])])
        res.append([px[i][W - width[i] - 1]])
        return res

    def prop_f(i, j):
        res = []
        res.append([Not(py[j][height[i] - 1])])
        for f in range(H - height[i] - 1):
            res.append([py[i][f], Not(py[j][f + height[i]])])
        res.append([py[i][H - height[i] - 1]])
        return res
 
    for i in range(n_blocks):
     for j in range(i+1, n_blocks):
       
         for pr in prop_e(i, j):
           prop = [Not(lr[i][j])] + pr
           s.add(Or(And(Not(rot[i]), Or(prop)), And(rot[i], Not(Or(prop)))))
           
         for pr in prop_e(j, i):
           prop = [Not(lr[j][i])] + pr
           s.add(Or(And(Not(rot[i]), Or(prop)), And(rot[i], Not(Or(prop)))))

         for pr in prop_f(i, j):
           prop = [Not(ud[i][j])] + pr
           s.add(Or(And(Not(rot[i]), Or(prop)), And(rot[i], Not(Or(prop)))))
           
         for pr in prop_f(j, i):
           prop = [Not(ud[j][i])] + pr
           s.add(Or(And(Not(rot[i]), Or(prop)), And(rot[i], Not(Or(prop)))))
           

    # Implicit domain of px and py, (true if width and height are less then the higher range)
    for i in range(n_blocks): 
        for e in range(W - width[i], W):
            s.add(Or(And(Not(rot[i]), px[i][e]), And(rot[i], Not(px[i][e] ))))
        for f in range(H - height[i], H):
            s.add(Or(And(Not(rot[i]),py[i][f]), And(rot[i], Not(py[i][f] ))))
        

    # Symmetry breaking constraints
    # Fixing position for same size rectangles (With two rectangles with same height and width, the first one is forced to be
    # on the left of the other in any solution)
    for i in range(n_blocks):
        for j in range(i+1, n_blocks):
            if width[i] == width[j] and height[i] == height[j]:
                s.add(Or(And(Not(rot[i]), Not(lr[j][i])), And(rot[i], lr[j][i] )))
                s.add(Or(And(Not(rot[i]), Or(lr[i][j], Not(ud[j][i]))), And(rot[i], Not(Or(lr[i][j], Not(ud[j][i]))))))
       
        
        
    # Large rectangles constraint (if sum of dimension exceed max constraint, they cannot be placed side by side or above the other)
    for i in range(n_blocks):
        for j in range(i+1, n_blocks):
            
            if width[i] + width[j] > W:
                 s.add(Or(And(Not(rot[i]), And(Not(lr[i][j]), Not(lr[j][i]))), And(rot[i], Not(And(Not(lr[i][j]), Not(lr[j][i]))) )))
     
            if height[i] + height[j] > H:
                s.add(Or(And(Not(rot[i]), And(Not(ud[i][j]), Not(ud[j][i]))), And(rot[i], Not(And(Not(ud[i][j]), Not(ud[j][i]))) )))


    #s.set('timeout', 300 * 1000) 
    # Converter: SAT boolean variables are translated in cartesian coordinates
    def sat_to_coordinates(m, px, py):
        
        x_sol = []
        y_sol = [] 

        for i in range(n_blocks): 
            j = 0
            while j < W:                #iterates over all possible x coordinates and set it to j as soon as evaluates is true for each rectangle i
                if m[px[i][j]]:  #see pag 5 paper (explain it in report)
                    x_sol.append(j) 
                    break
                j += 1

            j = 0
            while j < H:
                if m[py[i][j]]:
                    y_sol.append(j)
                    break
                j += 1

        return [x_sol, y_sol]
    
    # First test for satisfiability
    
    s.push()
    s.add(ph[lb])
    
    tries = 0
    while s.check() == unsat:
        tries += 1
        s.pop()
        s.push()

        # Decrease by 1 the allowed max height
        s.add(ph[lb+tries])
        
    m = s.model()
    sol_px, sol_py = sat_to_coordinates(m, px, py)
    makespan = np.max([sol_py[i]+height[i] for i in range(len(sol_py))]) # Compute makespan
    """

    s.add(ph[H])
    
    while s.check() == sat:
        m = s.model()
        sol_px, sol_py = sat_to_coordinates(m, px, py)
        makespan = np.max([sol_py[i]+height[i] for i in range(len(sol_py))]) # Compute makespan

        s.add(ph[makespan-1])
    """

    output_folder = Path(__file__).parent / "out2"

    instance.register_solution(sol_px, sol_py, makespan)

    sol_out = instance.solution_to_output_format()

    instance.solution_to_txt(output_folder)
    instance.solution_to_img(output_folder)

# Executing the solver
import io
import math
import time
import os
import multiprocessing

def start_solving(instance : VLSI_Instance, timeout : int):
    #print("-"*20)
    #print("Solving " + instance.name)

    p = multiprocessing.Process(target=SAT_solve, args=(instance,))

    p.start()
    start_time = time.time()
    p.join(timeout)

    # If thread is still active kill it
    if p.is_alive():
        print("Solving took longer than the allotted time, aborting")
        p.kill()
        p.join()
    
    #print(f"Time elapsed: {time.time() - start_time:.2f}")
    print(instance.name[4:6],time.time() - start_time )
    

if __name__ == "__main__":
    parser = ArgumentParser(description='Solve one or more VLSI instances using SAT')

    parser.add_argument("instance", nargs=1, type=Path, help="Path to the instance or instance folder")
    parser.add_argument("-t", "--timeout", nargs=1, default=300, type=int, help="How many seconds to wait before timeout for each instance")
    parser.add_argument("-f", "--folder", action="store_true", help="If passed the input data will be considered a folder containing multiple instances")

    args = vars(parser.parse_args())
    simplify_list = lambda x : x[0] if isinstance(x, list) else x
    args = {k:simplify_list(args[k]) for k in args}

    # Get all instances in the folder
    if args["folder"]:
        os.chdir(args["instance"])
        for file in glob.glob("*.txt"):
            try:
                vlsi_instance = VLSI_Instance(Path(file))
                start_solving(vlsi_instance, args["timeout"])
            except Exception as e:
                logging.error(f"File:{file} is malformed\n" + str(e))
    else:
        try:
            vlsi_instance = VLSI_Instance(args["instance"])
            start_solving(vlsi_instance, args["timeout"])
        except Exception as e:
            logging.error(f"File:{args['instance']} is malformed\n" + str(e))