from argparse import ArgumentParser
from pathlib import Path
import glob
from smt_utils import VLSI_Instance, BL_algorithm
import logging
import os
import multiprocessing
import time
import math
import numpy as np
from itertools import chain, combinations



from z3 import Int, Optimize, Or, And, Implies, IntVector, IntSort, ArraySort, If, Bool, Sum, BitVec , set_param, Extract, Product, Not
import z3


def start_solving(instance : VLSI_Instance, timeout : int):
    print("-"*20)
    print("Solving " + instance.name)

    p = multiprocessing.Process(target=solve_instance, args=(instance,))

    p.start()
    start_time = time.time()
    p.join(timeout)

    # If thread is still active kill it
    if p.is_alive():
        print("Solving took longer than the allotted time, aborting")
        p.kill()
        p.join()
    
    print(f"Time elapsed: {time.time() - start_time:.2f}")


def solve_instance(instance: VLSI_Instance, output_folder : Path = Path(__file__).parent / "out"):
    set_param("sat.random_seed", 25)
    naive_sol = BL_algorithm(instance)
    # Compute upper bound from naive solution1
    ub = int(np.max([s[0][1]+s[1][1] for s in naive_sol]))

    # Capacity lower bound
    lb = math.ceil(np.sum([instance.get_c_width(i)*instance.get_c_height(i) for i in range(instance.n_circuits)])/instance.max_width)

    # Naive upper bound
    # ub = int(np.sum([instance.get_c_height(i) for i in range(instance.n_circuits)]))

    widest_idx = np.argmax([instance.get_c_width(i) for i in range(instance.n_circuits)])
    tallest_idx = np.argmax([instance.get_c_height(i) for i in range(instance.n_circuits)])

    ###########
    # Variables
    corner_x = [Int(str(i) + "_x") for i in range(instance.n_circuits)]
    corner_y = [Int(str(i) + "_y") for i in range(instance.n_circuits)]

    lr = [[Bool(f"lr_{i+1}_{j+1}") if i != j else 0 for j in range(instance.n_circuits)] for i in range(instance.n_circuits)]
    ud = [[Bool(f"ud_{i+1}_{j+1}") if i != j else 0 for j in range(instance.n_circuits)] for i in range(instance.n_circuits)]

    makespan = Int("makespan")


    #############
    # Constraints
    opt = Optimize()

    opt.add(lb <= makespan)
    opt.add(makespan <= ub)

    # Element-wise constraints
    for i in range(instance.n_circuits):
        opt.add(corner_y[i]+instance.get_c_height(i) <= makespan)
        opt.add(corner_x[i]+instance.get_c_width(i) <= instance.max_width)

        opt.add(corner_x[i] >= 0)
        # Make use of bounds
        opt.add(corner_y[i] <= ub - instance.get_c_height(i))
        opt.add(corner_y[i] >= 0)

        # Supposed symmetry break
        if i == widest_idx:
            opt.add(corner_x[i]<=(instance.max_width-instance.get_c_width(i))//2)
        elif instance.get_c_width(i)>(instance.max_width - instance.get_c_width(widest_idx))//2:
            opt.add(lr[i][widest_idx] == False)

        if i == tallest_idx:
            opt.add(corner_y[i]<=(ub-instance.get_c_height(i))//2)
        elif instance.get_c_height(i)>(ub - instance.get_c_height(tallest_idx))//2:
            opt.add(ud[i][tallest_idx] == False)


    # Pairwise constraints
    for i in range(instance.n_circuits):
        for j in range(i+1, instance.n_circuits):
            # Non overlapping constraints
            opt.add((corner_x[i]+instance.get_c_width(i) <= corner_x[j]) == lr[i][j])
            opt.add((corner_y[i]+instance.get_c_height(i) <= corner_y[j])== ud[i][j])
            opt.add((corner_x[j]+instance.get_c_width(j) <= corner_x[i]) == lr[j][i])
            opt.add((corner_y[j]+instance.get_c_height(j) <= corner_y[i])==ud[j][i])

            opt.add(Or(lr[i][j], lr[j][i], ud[i][j], ud[j][i]))

            # Rectangle pair incompatibilities
            if instance.get_c_width(i) + instance.get_c_width(j) > instance.max_width:
                opt.add(lr[i][j] == False)
                opt.add(lr[j][i] == False)
            if instance.get_c_height(i) + instance.get_c_height(j) > ub:
                opt.add(Implies(instance.get_c_height(i) + instance.get_c_height(j) > makespan, ud[i][j] == False))
                opt.add(Implies(instance.get_c_height(j) + instance.get_c_height(i) > makespan, ud[j][i] == False))

    opt.minimize(makespan)
    
    print(opt.check())
    m = opt.model()
    instance.register_solution(m, corner_x, corner_y, makespan)

    output_folder.mkdir(exist_ok=True)
    sol_out = instance.solution_to_output_format()

    instance.solution_to_txt(output_folder)
    instance.solution_to_img(output_folder)
    return m

if __name__ == "__main__":
    parser = ArgumentParser(description='Solve one or more VLSI instances using SMT')

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
        
