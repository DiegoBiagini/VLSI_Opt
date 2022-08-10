from argparse import ArgumentParser
from pathlib import Path
import glob
from smt_utils import VLSI_Instance
import logging
import os
import multiprocessing
import time
import math
import numpy as np

from z3 import Int, Optimize, Or, And, Implies

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
    ###########
    # Variables
    corner_x = [Int(str(i) + "_x") for i in range(instance.n_circuits)]
    corner_y = [Int(str(i) + "_y") for i in range(instance.n_circuits)]

    makespan = Int("makespan")

    # Capacity lower bound
    lb = math.ceil(np.sum([instance.get_c_width(i)*instance.get_c_height(i)/instance.max_width for i in range(instance.n_circuits)]))

    # Naive upper bound
    ub = int(np.sum([instance.get_c_height(i) for i in range(instance.n_circuits)]))

    # Find the widest block
    widest_idx = np.argmax([s[1] for s in instance.circuits])
    widest = instance.get_c_width(widest_idx)

    #############
    # Constraints
    opt = Optimize()

    opt.add(lb <= makespan)
    opt.add(makespan <= ub)

    # Put the widest block in the bottom left corner if it's bigger than max_width/2
    if widest > instance.max_width /2:
        opt.add(corner_x[widest_idx] == 0)
        opt.add(corner_y[widest_idx] == 0)

    # Element-wise constraints
    for i in range(instance.n_circuits):
        opt.add(corner_y[i]+instance.get_c_height(i) <= makespan)
        opt.add(corner_x[i]+instance.get_c_width(i) <= instance.max_width)

        opt.add(corner_x[i] >= 0)
        # Make use of bounds
        opt.add(corner_y[i] <= ub - instance.get_c_height(i))
        opt.add(corner_y[i] >= 0)


    # Pairwise constraints
    for i in range(instance.n_circuits):
        for j in range(i+1, instance.n_circuits):
            # Non overlapping constraints
            opt.add(Or(
                corner_x[i]+instance.get_c_width(i) <= corner_x[j],
                corner_y[i]+instance.get_c_height(i) <= corner_y[j],
                corner_x[j]+instance.get_c_width(j) <= corner_x[i],
                corner_y[j]+instance.get_c_height(j) <= corner_y[i],
            ))

            # Symmetry breaking constraints
            """
            opt.add(Implies(And(corner_x[i]==corner_x[j], instance.get_c_width(i)==instance.get_c_width(j)), corner_y[i] <= corner_y[j]))
            opt.add(Implies(And(corner_y[i]==corner_y[j], instance.get_c_height(i)==instance.get_c_height(j)), corner_x[i] <= corner_x[j]))
            """
            
    opt.minimize(makespan)

    print(opt.check())
    m = opt.model()
    instance.register_solution(m, corner_x, corner_y, makespan)

    sol_out = instance.solution_to_output_format()
    print(sol_out)

    instance.solution_to_txt(output_folder)
    instance.solution_to_img(output_folder)
    return m

if __name__ == "__main__":
    parser = ArgumentParser(description='Solve one or more VLSI instances')

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
        
