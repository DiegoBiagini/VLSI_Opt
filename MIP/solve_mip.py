from argparse import ArgumentParser
from pathlib import Path
import glob
from mip_utils import VLSI_Instance, BL_algorithm
import logging
import os
import multiprocessing
import time
import math
import numpy as np

import gurobipy as gp

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
    naive_sol = BL_algorithm(instance)
    # Compute upper bound from naive solution
    ub = int(np.max([s[0][1]+s[1][1] for s in naive_sol]))
    # Naive upper bound
    nub = int(np.sum([instance.get_c_height(i) for i in range(instance.n_circuits)]))

    # Capacity lower bound
    lb = math.ceil(np.sum([instance.get_c_width(i)*instance.get_c_height(i)/instance.max_width for i in range(instance.n_circuits)]))
    with gp.Env(empty=True) as env:
        env.setParam("OutputFlag", 0)
        env.start()
        m = gp.Model("vlsi", env=env)

    ###########
    # Variables
    corner_x = [
        m.addVar(vtype=gp.GRB.INTEGER, name=(str(i) + "_x"), lb=0)
        for i in range(instance.n_circuits)]
    corner_y = [
        m.addVar(vtype=gp.GRB.INTEGER, name=(str(i) + "_y"), lb=0) 
        for i in range(instance.n_circuits)]

    makespan = m.addVar(vtype=gp.GRB.INTEGER, name="makespan")

    #############
    # Constraints

    m.addConstr(lb <= makespan)
    m.addConstr(makespan <= ub)

    # Element-wise constraints
    for i in range(instance.n_circuits):
        m.addConstr(corner_y[i]+instance.get_c_height(i) <= makespan)
        m.addConstr(corner_x[i]+instance.get_c_width(i) <= instance.max_width)

        # Make use of bounds
        m.addConstr(corner_y[i] <= ub - instance.get_c_height(i))

    # Pairwise constraints
    for i in range(instance.n_circuits):
        for j in range(i+1, instance.n_circuits):
            # Non overlapping constraints
            indicators = m.addVars(4, vtype=gp.GRB.BINARY)

            m.addConstr(corner_x[i]+instance.get_c_width(i) <= corner_x[j] + (1-indicators[0])*nub)
            m.addConstr(corner_y[i]+instance.get_c_height(i) <= corner_y[j] + (1-indicators[1])*nub)
            m.addConstr(corner_x[j]+instance.get_c_width(j) <= corner_x[i] + (1-indicators[2])*nub)
            m.addConstr(corner_y[j]+instance.get_c_height(j) <= corner_y[i] + (1-indicators[3])*nub)
            # OR
            m.addConstr(gp.quicksum(indicators[i] for i in range(4)) >= 1)
            # Symmetry breaking constraints
            """
            if instance.get_c_width(i) == instance.get_c_width(j):
                opt.add(Implies(corner_x[i]==corner_x[j], corner_y[i] <= corner_y[j]))
            if instance.get_c_height(i) == instance.get_c_height(j):
                opt.add(Implies(corner_y[i]==corner_y[j], corner_x[i] <= corner_x[j]))
            """

    # Cumulative constraints
    """
    for i in range(ub):
        for j in range(instance.n_circuits):
            opt.add(
                Sum([If(And(corner_y[j]<= i, i <= corner_y[j]+instance.get_c_height(j)), 
                        instance.get_c_width(j), 
                        0)])
                <= instance.max_width
            )
    
    for i in range(instance.max_width):
        for j in range(instance.n_circuits):
            opt.add(
                Sum([If(And(corner_x[j]<= i, i <= corner_x[j]+instance.get_c_width(j)), 
                        instance.get_c_height(j), 
                        0)])
                <= makespan
            )
    """
    m.update()
    m.setObjective(makespan, gp.GRB.MINIMIZE)

    m.optimize()

    instance.register_solution(m.getVars(), corner_x, corner_y, makespan)

    sol_out = instance.solution_to_output_format()

    instance.solution_to_txt(output_folder)
    instance.solution_to_img(output_folder)
    return m

if __name__ == "__main__":
    parser = ArgumentParser(description='Solve one or more VLSI instances using MIP')

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
        
