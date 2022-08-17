from z3 import *


def SAT_solve():
  s = Solver()

  # Definition of variables
  px = [[Bool(f"px_{i+1}_{e}") for e in range(W)] for i in range(n_blocks)]  
  py = [[Bool(f"py_{j+1}_{f}") for f in range(H)] for j in range(n_blocks)] 

  lr = [[Bool(f"lr_{i+1}_{j+1}") if i != j else 0 for j in range(n_blocks)] for i in range(n_blocks)]
  ud = [[Bool(f"ud_{i+1}_{j+1}") if i != j else 0 for j in range(n_blocks)] for i in range(n_blocks)]

  #Constraints
  
  #Order encoding constraints
  for i in range(n_blocks):
      for e in range(W - width[i]):  
        s.add(Or(Not(px[i][e]), px[i][e+1]))
      for f in range(H - height[i]):  
        s.add(Or(Not(py[i][f]), py[i][f+1]))
        
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


  s.set('timeout', 300 * 1000) 
  
  if s.check() == sat:
    print('Solved')
  else:
    print('Not solvable')
    
  return s, px, py


# Converter: SAT boolean variables are translated in cartesian coordinates
def sat_to_coordinates(m, px, py):
  x_sol = []
  y_sol = [] 

  for i in range(n_blocks): 
    j = 0
    while j < W:                #iterates over all possible x coordinates and set it to j as soon as evaluates is true for each rectangle i
      if m.evaluate(px[i][j]):  #see pag 5 paper (explain it in report)
        x_sol.append(j) 
        break
      j += 1

    j = 0
    while j < H:
      if m.evaluate(py[i][j]):
        y_sol.append(j)
        break
      j += 1

  return [x_sol, y_sol]


 

# Executing the solver
import io
import math
import time
import os

for i in range(1,41):
  start_cwd = os.getcwd()

  file_name = "Instances/ins-" + str(i) + ".txt"
  buf = open(file_name)
  W = int(buf.readline())
  n_blocks = int(buf.readline())

  width = []
  height = []

  for line in buf:
    tmp = line.split()
    tmp = [int(x) for x in tmp]
    width.append(tmp[0])
    height.append(tmp[1])

  #max_W = max([width[i] for i in range(n_blocks)])
  #H = int(math.ceil(sum([max_W * height[i] for i in range(n_blocks)]) / W)) #come modello minizinc(funziona male) 
  #H = int(math.ceil(sum([height[i] for i in range(n_blocks)]))) #H naive
  H = int(math.ceil(sum([width[i] * height[i] for i in range(n_blocks)]) / W))  #lowest H possible (to be modified)
  
  start = time.time()
  s, px, py = SAT_solve()
  end = time.time()

  print(file_name + ' ' + "{:.2f}".format(end - start))

  cornerx, cornery = sat_to_coordinates(s.model(), px, py)
  
  out_file = '{}/SAT/out/prova_out-{}.txt'.format(start_cwd,i)
  out_buf = open(out_file, 'w')
  out_buf.write(str(W) + ' ' + str(H) + '\n')
  out_buf.write(str(n_blocks) + '\n')

  for (w, h, cx, cy) in zip(width, height, cornerx, cornery):
    out_buf.write(str(w) + ' ' + str(h) + ' ' + str(cx) + ' ' + str(cy) + '\n')