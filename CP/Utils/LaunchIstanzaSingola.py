import os
from time import time
import subprocess


def solve_instance(cores, model, in_file, out_dir):

    # command to run the model
    command = f'minizinc --solver Chuffed -p {cores} -t 300000 {model} {in_file}'
    
    instance_name = in_file.split('\\')[-1] if os.name == 'nt' else in_file.split('/')[-1]
    instance_name = instance_name[:len(instance_name) - 4]
    out_file = os.path.join(out_dir, instance_name + '-out.txt')
    
    with open(out_file, 'w') as f:
        print(f'{out_file}:', end='\n', flush=True)
        start_time = time()
        output = subprocess.run(command,  shell=True, capture_output=True)
        print(output)
        elapsed_time = time() - start_time
        print(f'{elapsed_time * 1000:.1f} ms')
        if (elapsed_time * 1000) < 300000:
            output = subprocess.run(command,  shell=True, capture_output=True)
            print(output.stdout)
            f.write('{}'.format(elapsed_time))
            


def main():
    cores = 1
    model = "VLSI model.mzn"
    in_file = "ins-1.dzn"
    out_dir = "out"

    solve_instance(cores, model, in_file, out_dir)


if __name__ == '__main__':
    main()

