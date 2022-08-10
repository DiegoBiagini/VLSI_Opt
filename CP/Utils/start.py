from minizinc import Instance, Model, Solver, Status, MiniZincError
import io
import os
import time
from datetime import timedelta

def retrive_data(result):
    # Retrive results
    buf = io.StringIO(str(result))
    total_res = {}
    total_dim = buf.readline().split()
    total_res['max_width'] = int(total_dim[0])
    total_res['max_height'] = int(total_dim[1])
    n_blocks = buf.readline()
    total_res['n_blocks'] = int(n_blocks)

    widths = []
    heights = []
    cornerx = []
    cornery = []
    for line in buf:
        tmp = line.split()
        tmp = [int(x) for x in tmp]
        widths.append(tmp[0])
        heights.append(tmp[1])
        cornerx.append(tmp[2])
        cornery.append(tmp[3])

    total_res['widths'] = widths
    total_res['heights'] = heights
    total_res['cornerx'] = cornerx
    total_res['cornery'] = cornery
    buf.close()

    return total_res


dir_instance = "CP/CP Instances/Instances Dzn" 
model_name = 'CP/VLSI model.mzn'
solver_name = 'chuffed'  # 'gecode'

start_cwd = os.getcwd()

times=[]
for i in range(40): #40
    out_file = open('{}/{}/out-{}.txt'.format(start_cwd,dir_instance, i+1), 'w')
    name = './' + dir_instance +  '/ins-{}.dzn'.format(i+1)
    vlsi = Model("./" + model_name)
    vlsi.add_file(name)
    chuffed = Solver.lookup(solver_name)
    instance = Instance(chuffed, vlsi)

    start = time.time()
    try:
        result = instance.solve(timeout=timedelta(seconds=300))
    except MiniZincError as e:
        print(e)
    end = time.time()

    print(name + '\t' + '{:.2f}'.format(end - start))
    times.append(result.statistics['time'].microseconds / (10 ** 6)+ result.statistics['time'].seconds)
    
    if result.status is Status.UNSATISFIABLE:
        print('UNSAT')
        out_file.write('UNSAT')
        out_file.close()
        continue

    res_data = retrive_data(result)
    out_file.write(str(res_data['max_width']) + ' ' + str(res_data['max_height']) + '\n')
    out_file.write(str(res_data['n_blocks']) + '\n')
    for (w, h, cx, cy) in zip(res_data['widths'], res_data['heights'], res_data['cornerx'], res_data['cornery']):
        out_file.write(str(w) + ' ' + str(h) + ' ' + str(cx) + ' ' + str(cy) + '\n')
    out_file.close()
    
    out_file2 = open('{}/TIMES.txt'.format(start_cwd), 'w')
    out_file2.write(str(times))
    out_file2.close()