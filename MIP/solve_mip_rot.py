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
from itertools import chain, combinations

def powerset(iterable):
    s = list(iterable)
    return chain.from_iterable(combinations(s, r) for r in range(2,len(s)+1))

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


def solve_instance(instance: VLSI_Instance, output_folder : Path = Path(__file__).parent / "out_rot"):
    naive_sol = BL_algorithm(instance)
    # Compute upper bound from naive solution
    ub = int(np.max([s[0][1]+s[1][1] for s in naive_sol]))
    # Naive upper bound
    nub = int(np.sum([instance.get_c_height(i) for i in range(instance.n_circuits)]))

    # Capacity lower bound
    lb = math.ceil(np.sum([instance.get_c_width(i)*instance.get_c_height(i) for i in range(instance.n_circuits)])/instance.max_width)

    with gp.Env(empty=True) as env:
        env.setParam("OutputFlag", 0)
        env.start()
        m = gp.Model("vlsi", env=env)
    
    # Focus on proving optimality
    #m.setParam(gp.GRB.Param.MIPFocus, 1)
    
    # Hard symmetry detection
    m.setParam(gp.GRB.Param.Symmetry, 2)

    #m.setParam(gp.GRB.Param.Disconnected, 0)
    
    #m.setParam(gp.GRB.Param.BranchDir, -1)

    ###########
    # Variables
    corner_x = [
        m.addVar(vtype=gp.GRB.INTEGER, name=(str(i) + "_x"), lb=0)
        for i in range(instance.n_circuits)]
    corner_y = [
        m.addVar(vtype=gp.GRB.INTEGER, name=(str(i) + "_y"), lb=0) 
        for i in range(instance.n_circuits)]

    makespan = m.addVar(vtype=gp.GRB.INTEGER, name="makespan")

    rot = m.addVars(instance.n_circuits, vtype=gp.GRB.BINARY)

    widths = m.addVars(instance.n_circuits, vtype=gp.GRB.INTEGER)
    heights = m.addVars(instance.n_circuits, vtype=gp.GRB.INTEGER)

    #############
    # Constraints

    m.addConstr(lb <= makespan)
    m.addConstr(makespan <= ub)

    # Element-wise constraints
    for i in range(instance.n_circuits):

        m.addConstr(corner_y[i]+heights[i] <= makespan)
        m.addConstr(corner_x[i]+widths[i] <= instance.max_width)

        corner_x[i].VarHintVal = naive_sol[i][1][0]
        corner_y[i].VarHintVal = naive_sol[i][1][1]
        rot[i].VarHintVal = 0

        # Make use of bounds
        m.addConstr(corner_y[i] <= ub - heights[i])

        # Set widths and heights according to rotation
        m.addConstr(widths[i] == rot[i]*instance.get_c_height(i) + (1-rot[i])*instance.get_c_width(i))
        m.addConstr(heights[i] == rot[i]*instance.get_c_width(i) + (1-rot[i])*instance.get_c_height(i))

    # Pairwise constraints
    for i in range(instance.n_circuits):
        for j in range(i+1, instance.n_circuits):
            # Non overlapping constraints
            
            indicators = m.addVars(4, vtype=gp.GRB.BINARY)

            m.addGenConstrIndicator(indicators[0], True, corner_x[i]+widths[i] <= corner_x[j])
            m.addGenConstrIndicator(indicators[1], True, corner_y[i]+heights[i] <= corner_y[j])
            m.addGenConstrIndicator(indicators[2], True, corner_x[j]+widths[j] <= corner_x[i])
            m.addGenConstrIndicator(indicators[3], True, corner_y[j]+heights[j] <= corner_y[i])
            # OR
            or_out = m.addVar(vtype=gp.GRB.BINARY)
            m.addGenConstrOr(or_out, indicators)
            m.addConstr(or_out==1)

    # Cumulative constraints
    for i in range(ub):
        and_variables =[]
        for j in range(instance.n_circuits):
            ind2 = m.addVars(2, vtype=gp.GRB.BINARY)
            m.addGenConstrIndicator(ind2[0], True, corner_y[j]<=i)
            m.addGenConstrIndicator(ind2[1], True, i<=corner_y[j]+heights[j])
            
            andv = m.addVar(vtype=gp.GRB.BINARY)
            m.addGenConstrAnd(andv, ind2)

            and_variables.append(andv)
        m.addConstr(gp.quicksum(
            and_variables[j]*widths[j] for j in range(instance.n_circuits))<=instance.max_width)

    
    for i in range(instance.max_width):
        and_variables = []
        for j in range(instance.n_circuits):
            ind2 = m.addVars(2, vtype=gp.GRB.BINARY)
            m.addGenConstrIndicator(ind2[0], True, corner_x[j]<=i)
            m.addGenConstrIndicator(ind2[1], True, i<=corner_x[j]+widths[j])

            andv = m.addVar(vtype=gp.GRB.BINARY)
            m.addGenConstrAnd(andv, ind2)

            and_variables.append(andv)
        m.addConstr(gp.quicksum(
            and_variables[j]*heights[j] for j in range(instance.n_circuits))<= makespan)       

    m.update()
    m.setObjective(makespan, gp.GRB.MINIMIZE)

    m.optimize()
    if m.Status == gp.GRB.OPTIMAL:
        instance.register_solution(m.getVars(), corner_x, corner_y, makespan, rot)

        sol_out = instance.solution_to_output_format(rot=True)

        instance.solution_to_txt(output_folder, rot=True)
        instance.solution_to_img(output_folder, rot=True)
    else:
        print("No optimal solution was found")

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
        
