# VLSI Optimization
Repository containing the final project for the course Combinatorial Optimization and Decision Making a.a. 2021/2022 - Master Degree in Artificial Intelligence at the university of Bologna.  

Group members:
- Diego Biagini
- Ildebrando Simeoni

## The VLSI problem
Very large-scale integration (VLSI) is the process of creating an integrated circuit (IC) by combining millions of MOS transistors onto a single chip.  
Structured VLSI design is a modular methodology whose principal aim is to save microchip area. This is obtained by repetitive arrangement of rectangular macro blocks which can be interconnected using wiring.  

The aim of this project is to deal with this specific problem via a Combinatorial Optimization approach. 

## Technologies
In particular four different technologies have been adopted to address the problem, namely: 
- **Constraint Programming** (CP), using Minizinc and its python interface
- **Propositional satisfiability** (SAT), using the Z3 solver and its python inference
- **Satisifability Modulo Theory** (SMT), using Z3 as well as other solvers thanks to SMTLIB
- **Mixed-Integer Linear Programming** (MIP), using the Gurobi solver with its python interface

## Execution

The programs were developed and ran on python 3.x.

For each technology a requirements file to install is provided:
```
pip install -r src/requirements.txt
```
### CP
If you need to **convert** a set of .txt instances into a set of .mzn instances use the utility "CP/src/Utils/convert_to_dzn.py"  
It requires the following arguments:
- Instance: the path to either a folder containing a set of instances or a single instance in .txt format
Optional arguments are:
- Folder(-f): pass this flag if the Instance argument is a folder of instances

The converted instances are found in a newly created folder called "DZN_instances"

The model which solves an instance without rotations is "src/VLSI_model.mzn", the one which allows rotations is "src/VLSI_model_rotation.mzn".  
Once you have the instances in .dzn format to **solve** them you can either run the model in the minizinc IDE or use the python command line utility "src/Utils/solve_cp.py".  

It requires the following arguments:
- Instance: the path to either a folder containing a set of instances or a single instance in .dzn format
- Model: the path to the model file
Optional arguments are:
- Timeout(-t): timeout for solving a single instance in seconds, by default this is 300 seconds
- Folder(-f): pass this flag if the Instance argument is a folder of instances

Example:  
```
python src/Utils/solve_cp.py "Instances"  "./src/VLSI_model.mzn" -f -t 500
```
This solves the instances in the folder "Instances" with a timeout of 500 seconds using the given model (no rotations).

### SAT
To solve the instances using SAT without rotation run the file "SAT/src/solve_sat.py"
It requires the following arguments:
- Instance: the path to either a folder containing a set of instances or a single instance in txt format
Optional arguments are:  
- Timeout(-t): timeout for solving a single instance in seconds, by default this is 300 seconds
- Folder(-f): pass this flag if the Instance argument is a folder of instances

Example:  
```
python src/solve_sat.py "./Instances" -f -t 500
```
### SMT
To **solve** the instances using SMT without rotation and with **Z3py**, run the file "SMT/src/solve_smt.py"  
It requires the following arguments:
- Instance: the path to either a folder containing a set of instances or a single instance in txt format
Optional arguments are:
- Timeout(-t): timeout for solving a single instance in seconds, by default this is 300 seconds
- Folder(-f): pass this flag if the Instance argument is a folder of instances

Example:
```
python src/solve_smt.py "./Instances" -f -t 500
```
This solves the instances in the folder "Instances" with a timeout of 500 seconds.  
The results are saved in a new folder called "out".  
To solve the instances using SMT with **rotation** run the file "src/solve_smt_rot.py", with the same command line arguments as before.  

To solve a set of instances using the **SMTLIB** interface they first have to be dumped into an .smt2 file.  
To do so run the file "SMT/src/other/smtlib_utils.py".  

It requires the following arguments:
- Instance: the path to either a folder containing a set of instances or a single instance in txt format
Optional arguments are:
- Folder(-f): pass this flag if the Instance argument is a folder of instances
The output will be found in a new folder called "smtlib_decl", for each instance we generate a .json and a .smt2 file.  
The json file contains informations about the starting value of the objective function.  

To solve these SMTLIB instances you can run the "src/other/smt_opt.sh" file manually or use the "src/other/solve_smtlib.py" wrapper.  
This defines a command line utility to solve a set of SMTLIB instances, exactly the same as "solve_smt.py"
However with this the instances to be passed have to be .json files with a .smt2 file with the same name in the same folder.  

### MIP

To solve the instances using MIP without rotation run the file "MIP/src/solve_mip.py".  
It requires the following arguments:  
- Instance: the path to either a folder containing a set of instances or a single instance in txt format
Optional arguments are:
- Timeout(-t): timeout for solving a single instance in seconds, by default this is 300 seconds
- Folder(-f): pass this flag if the Instance argument is a folder of instances

Example:
```
python src/solve_mip.py "./Instances" -f -t 500
```
This solves the instances in the folder "Instances" with a timeout of 500 seconds.  
The results are saved in a new folder called "out".  

To solve the instances using MIP with rotation run the file "src/solve_mip_rot.py", with the same command line arguments as before
