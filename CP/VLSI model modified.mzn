include "globals.mzn";
include "fzn_diffn.mzn";
include "fzn_diffn_reif.mzn";

% Variables 
int: n_blocks;  
int: max_width;
                     
set of int: BLOCKS = 1..n_blocks;  
  
array[BLOCKS] of int: height;       
array[BLOCKS] of int: width;         

int: h = sum(height);
int: w = sum(width);   
              
array[BLOCKS] of var 0..h-min(height): cornery;
array[BLOCKS] of var 0..w-min(width): cornerx;

% Objective function
var int: makespan = max(b in BLOCKS)(cornery[b] + height[b]);

% Objective function bounds
var int: lower_bound = ceil((sum(b in BLOCKS)(width[b] * height[b]) div max_width)); 
var int: upper_bound = h; 

%Objective function domain constraints
constraint makespan >= lower_bound;  
constraint makespan <= upper_bound;

%Main constraints
constraint forall(b in BLOCKS) (cornery[b] + height[b] <= makespan);
constraint forall(b in BLOCKS) (cornerx[b] + width[b] <= max_width);
constraint forall(b in BLOCKS) (cornery[b]  < makespan); 
constraint diffn(cornerx, cornery, width, height); 

%Implied constraints
constraint cumulative(cornery, height, width, max_width);
constraint cumulative(cornerx, width,height, makespan); 

%Symmetry breaking constraints 
constraint forall (i,j in BLOCKS where 
                  i < j /\cornerx[i] = cornerx[j] /\ 
                  width[i] = width[j] /\ cornery[i] + height[i] = cornery[j]) 
                  (lex_less([cornery[i]], [cornery[j]]) );  
                  
constraint forall (i,j in BLOCKS where 
                  i < j /\cornery[i] = cornery[j] /\ 
                  height[i] = height[j] /\ cornerx[i] + width[i] = cornerx[j]) 
                  (lex_less([cornerx[i]], [cornerx[j]]) );  

constraint forall (i,j in BLOCKS where 
                  i < j /\height[i] = height[j]/\ 
                  width[i] = width[j] ) 
                  (lex_less([cornerx[i], cornery[i]],
                            [cornerx[j], cornery[j]]) );  

% Search strategies

%GECODE
/*
solve :: seq_search([int_search([makespan], smallest, indomain_min),
                 int_search(cornerx, input_order, indomain_min)
                 ])%::restart_luby(150) minimize makespan;*/

%CHUFFED 
solve :: seq_search([int_search([makespan], smallest, indomain_min),
                 int_search(cornerx, input_order, indomain_min) 
                 ])::restart_luby(150) minimize makespan;
                 
% Output
output["\(max_width) \(makespan)\n\(n_blocks)\n"] ++
  ["\(width[b]) \(height[b]) \(cornerx[b]) \(cornery[b])\n" | b in BLOCKS];