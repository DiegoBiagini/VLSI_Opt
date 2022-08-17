################
#  Multiple capacity constraints

def powerset(iterable):
    s = list(iterable)
    return chain.from_iterable(combinations(s, r) for r in range(2,len(s)+1))


comp_number = 5 #math.ceil(instance.n_circuits /5.0)

tallest_indices = instance.get_tallest_indices()
comps_heights = powerset(tallest_indices[:comp_number])


bitvecs_h = [[Bool(f"bvh_{i}_{j}") for j in range(ub)]for i in range(instance.n_circuits)]
for i, el in enumerate(bitvecs_h):
    for j in range(ub):
        opt.add(And(j >= corner_y[i], j <= corner_y[i]+instance.get_c_height(i)) == el[j] )
    

for e in comps:
    comp_width = np.sum([instance.get_c_width(v) for v in e])
    if comp_width > instance.max_width:
        opt.add(
            Sum([Product([bitvecs_h[j][i] for j in e]) for i in range(ub)])==0
        )
    
bitvecs_w = [[Bool(f"bvw_{i}_{j}") for j in range(instance.max_width)]for i in range(instance.n_circuits)]
for i, el in enumerate(bitvecs_w):
    for j in range(instance.max_width):
        opt.add(And(j >= corner_x[i], j <= corner_x[i]+instance.get_c_height(i)) == el[j] )
    

for e in comps_heights:
    comp_height = np.sum([instance.get_c_height(v) for v in e])
    if comp_height > ub:
        opt.add(
            Sum([Product([bitvecs_w[j][i] for j in e]) for i in range(instance.max_width)])==0
        )
        
##########
# Cumulative Constraints
    
cum1 = [[Bool(f"{i}_{j}_cum1") for j in range(instance.n_circuits)] for i in range(ub)]
for i in range(ub):
    for j in range(instance.n_circuits):
        opt.add(And(i>=corner_y[j], i <= corner_y[j]+instance.get_c_height(j)) == cum1[i][j])
        opt.add(cum1[i][j]*instance.get_c_width(j) <= instance.max_width)
            
    opt.add(Sum([cum1[i][j]* instance.get_c_width(j) for j in range(instance.n_circuits)])<=instance.max_width)
    #opt.add(Sum(cum1[i])<=instance.max_width)

cum2 = [[Bool(f"{i}_{j}_cum2") for j in range(instance.n_circuits)] for i in range(instance.max_width)]
for i in range(instance.max_width):
    for j in range(instance.n_circuits):
        opt.add(And(i >= corner_x[j], i <= corner_x[j]+instance.get_c_width(j)) == cum2[i][j])
        opt.add(cum2[i][j]*instance.get_c_height(j) <= makespan)
            
    #opt.add(Sum([cum2[i][j]*instance.get_c_height(j) for j in range(instance.n_circuits)])<= makespan)
    opt.add(Sum(cum2[i])<=makespan)
    
##########
# Symmetry breaking
opt.add(Or(
    corner_x[i]+instance.get_c_width(i) <= corner_x[j],
        And(
            corner_y[i]+instance.get_c_height(i) <= corner_y[j], 
            corner_x[i]+instance.get_c_width(i)>= corner_x[j]+1, 
            corner_x[j]+instance.get_c_width(j)>= corner_x[i]+1),
        corner_x[j]+instance.get_c_width(j) <= corner_x[i],
        And(
            corner_y[j]+instance.get_c_height(j) <= corner_y[i],
            corner_x[i]+instance.get_c_width(i)>= corner_x[j]+1, 
            corner_x[j]+instance.get_c_width(j)>= corner_x[i]+1)  
        ))
            
# Symmetry breaking constraints v2
            
opt.add(Implies(
    And(corner_x[i]==corner_x[j],instance.get_c_width(i) == instance.get_c_width(j)), 
        corner_y[i] <= corner_y[j]))

opt.add(Implies(
        And(corner_y[i]==corner_y[j], instance.get_c_height(i) == instance.get_c_height(j)), 
            corner_x[i] <= corner_x[j]))

