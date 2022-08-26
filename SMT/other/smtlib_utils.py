from argparse import ArgumentParser
from pathlib import Path
import glob
from smt_utils import VLSI_Instance, BL_algorithm
import logging
import os
import math
import numpy as np
import json

from z3 import Int, Or, And, Implies, IntVector, IntSort, ArraySort, If, Bool, Sum, Ast, Z3_benchmark_to_smtlib_string, Solver


def write_smtlib(instance: VLSI_Instance, output_folder : Path = Path(__file__).parent / "smtlib_decl"):
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
    solv = Solver()

    solv.add(lb <= makespan)
    solv.add(makespan <= ub)

    # Element-wise constraints
    for i in range(instance.n_circuits):
        solv.add(corner_y[i]+instance.get_c_height(i) <= makespan)
        solv.add(corner_x[i]+instance.get_c_width(i) <= instance.max_width)

        solv.add(corner_x[i] >= 0)
        # Make use of bounds
        solv.add(corner_y[i] <= ub - instance.get_c_height(i))
        solv.add(corner_y[i] >= 0)

        # Supposed symmetry break
        if i == widest_idx:
            solv.add(corner_x[i]<=(instance.max_width-instance.get_c_width(i))//2)
        elif instance.get_c_width(i)>(instance.max_width - instance.get_c_width(widest_idx))//2:
            solv.add(lr[i][widest_idx] == False)

        if i == tallest_idx:
            solv.add(corner_y[i]<=(ub-instance.get_c_height(i))//2)
        elif instance.get_c_height(i)>(ub - instance.get_c_height(tallest_idx))//2:
            solv.add(ud[i][tallest_idx] == False)


    # Pairwise constraints
    for i in range(instance.n_circuits):
        for j in range(i+1, instance.n_circuits):
            # Non overlapping constraints
            solv.add((corner_x[i]+instance.get_c_width(i) <= corner_x[j]) == lr[i][j])
            solv.add((corner_y[i]+instance.get_c_height(i) <= corner_y[j])== ud[i][j])
            solv.add((corner_x[j]+instance.get_c_width(j) <= corner_x[i]) == lr[j][i])
            solv.add((corner_y[j]+instance.get_c_height(j) <= corner_y[i])==ud[j][i])

            solv.add(Or(lr[i][j], lr[j][i], ud[i][j], ud[j][i]))

            # Rectangle pair incompatibilities
            if instance.get_c_width(i) + instance.get_c_width(j) > instance.max_width:
                solv.add(lr[i][j] == False)
                solv.add(lr[j][i] == False)
            #if instance.get_c_height(i) + instance.get_c_height(j) > ub:
            solv.add(Implies(instance.get_c_height(i) + instance.get_c_height(j) > makespan, ud[i][j] == False))
            solv.add(Implies(instance.get_c_height(j) + instance.get_c_height(i) > makespan, ud[j][i] == False))

    out_smtlib = output_folder / (instance.name + ".smt2")
    with open(out_smtlib, "w") as f:
        f.writelines(solv.to_smt2())

    json_info = {"obj_var":"makespan", "initial_bound":ub}
    out_json = output_folder / (instance.name +".json")
    with open(out_json, "w") as f:
        json.dump(json_info, f)
    print(f"Instance {instance.name} compiled")

if __name__ == "__main__":
    parser = ArgumentParser(description='Write one or more VLSI instances in SMTLIB format')

    parser.add_argument("instance", nargs=1, type=Path, help="Path to the instance or instance folder")
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
                write_smtlib(vlsi_instance)
            except Exception as e:
                logging.error(f"File:{file} is malformed\n" + str(e))
    else:
        try:
            vlsi_instance = VLSI_Instance(args["instance"])
            write_smtlib(vlsi_instance)
        except Exception as e:
            logging.error(f"File:{args['instance']} is malformed\n" + str(e))
        