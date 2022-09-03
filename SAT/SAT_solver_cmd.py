from z3 import *

from sat_utils import VLSI_Instance, BL_algorithm
from argparse import ArgumentParser
import logging
from pathlib import Path
import numpy as np
import glob

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

    # ph_o is true if all rectangles are packed under height o
    ph = [Bool(f"ph_{o}") for o in range(H+1)]

    #Constraints
  
    #Order encoding constraints
    for i in range(n_blocks):
        for e in range(W - width[i]):  
            s.add(Or(Not(px[i][e]), px[i][e+1]))
        for f in range(H - height[i]):  
            s.add(Or(Not(py[i][f]), py[i][f+1]))
    
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
            s.add(Or(lr[i][j], lr[j][i], ud[i][j], ud[j][i]))
      
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
                s.add(Or(prop))
        
            for pr in prop_e(j, i):
                prop = [Not(lr[j][i])] + pr
                s.add(Or(prop))

            for pr in prop_f(i, j):
                prop = [Not(ud[i][j])] + pr
                s.add(Or(prop))
        
            for pr in prop_f(j, i):
                prop = [Not(ud[j][i])] + pr
                s.add(Or(prop))
 

    # Implicit domain of px and py, (true if width and height are less then the higher range)
    for i in range(n_blocks): 
        for e in range(W - width[i], W):
            s.add(px[i][e])
        for f in range(H - height[i], H):
            s.add(py[i][f])
    

    # Symmetry breaking constraints
    # Fixing position for same size rectangles (With two rectangles with same height and width, the first one is forced to be
    # on the left of the other in any solution)
    for i in range(n_blocks):
        for j in range(i+1, n_blocks):
            if width[i] == width[j] and height[i] == height[j]:
                s.add(Not(lr[j][i]))
                s.add(Or(lr[i][j], Not(ud[j][i])))
        
        
    # Large rectangles constraint (if sum of dimension exceed max constraint, they cannot be placed side by side or above the other)
    for i in range(n_blocks):
        for j in range(i+1, n_blocks):
            
            if width[i] + width[j] > W:
                s.add(And(Not(lr[i][j]), Not(lr[j][i])))    
            
            if height[i] + height[j] > H:
                s.add(And(Not(ud[i][j]), Not(ud[j][i])))


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

    output_folder = Path(__file__).parent / "out"

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
    print("-"*20)
    print("Solving " + instance.name)

    p = multiprocessing.Process(target=SAT_solve, args=(instance,))

    p.start()
    start_time = time.time()
    p.join(timeout)

    # If thread is still active kill it
    if p.is_alive():
        print("Solving took longer than the allotted time, aborting")
        p.kill()
        p.join()
    
    print(f"Time elapsed: {time.time() - start_time:.2f}")

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