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

array [BLOCKS] of var bool: rotation; 
              
array[BLOCKS] of var 0..h-min(height): cornery;
array[BLOCKS] of var 0..w-min(width): cornerx;

% Horizontal and vertical dimensions considering rotation 
array[BLOCKS] of var int: width_r = [if rotation[b]==true then height[b] else width[b] endif | b in BLOCKS];
array[BLOCKS] of var int: height_r = [if rotation[b] then width[b] else height[b] endif | b in BLOCKS];

% Objective function
var int: makespan = max(b in BLOCKS)(cornery[b] + height_r[b]);

% Objective function bounds
var int: lower_bound = (sum(b in BLOCKS)(width_r[b] * height_r[b]) div max_width); 
var int: upper_bound = h; 

% Objective function domain constraints
constraint makespan >= lower_bound;  
constraint makespan <= upper_bound;

% Main constraints
constraint forall(b in BLOCKS) (cornery[b] + height_r[b] <= makespan);
constraint forall(b in BLOCKS) (cornery[b]  < makespan); 
constraint forall(b in BLOCKS) (cornerx[b] + width_r[b] <= max_width);
constraint diffn(cornerx, cornery, width_r, height_r); 

% Implied constraints
constraint cumulative(cornery, height_r, width_r, max_width);
constraint cumulative(cornerx, width_r,height_r, makespan);

% Rotation related constraints
constraint forall(b in BLOCKS)(height[b] > max_width -> rotation[b]=false);
constraint forall (b in BLOCKS) (height[b] == width[b] -> rotation[b] = false);

%GECODE
/*
solve :: seq_search([int_search([makespan], smallest, indomain_min),
                 int_search(cornerx, dom_w_deg, indomain_random)
                 ])::restart_luby(150) minimize makespan;*/

%CHUFFED 
solve :: seq_search([int_search([makespan], smallest, indomain_min),
                 int_search(cornerx, input_order, indomain_min) 
                 ])::restart_luby(150) minimize makespan;
                 


% Output
output["\(max_width) \(makespan)\n\(n_blocks)\n"] ++
  ["\(width_r[b]) \(height_r[b]) \(cornerx[b]) \(cornery[b])\n" | b in BLOCKS];
  
% Output that shows which blocks have been rotated
/*
output["\(max_width) \(makespan)\n\(n_blocks)\n"] ++
["\(width_r[b]) \(height_r[b]) \(cornerx[b]) \(cornery[b]) \(rotation[b])\n" | b in BLOCKS]; */
/*