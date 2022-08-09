include "globals.mzn";
include "fzn_diffn.mzn";
include "fzn_diffn_reif.mzn";
include "lex_lesseq.mzn";
include "lex_greater.mzn";

% Variables instantiation
int: n_blocks;                       
set of int: BLOCKS = 1..n_blocks;    
array[BLOCKS] of int: height;       

int: max_width;                     
array[BLOCKS] of int: width;         

int: h = sum(height);
int: w = sum(width);                 
array[BLOCKS] of var 0..h: cornery;   %0..h-min(height)
array[BLOCKS] of var 0..w: cornerx; %0..w-min(width) 

% Lower bound of makespan
var int: makespan = max(b in BLOCKS)(cornery[b] + height[b]);

var int: min_reach_h = ceil((sum(b in BLOCKS)(width[b] * height[b]) div max_width)); %int ?

var int: max_reach_h = ceil((sum(b in BLOCKS)((max(width)) * height[b]) div max_width)); %int ? or max_reach_h = h

constraint makespan >= max(min_reach_h, max(height));  %min_reach_h
%var min_reach_h..max_reach_h: makespan = max(b in BLOCKS)(cornery[b] + height[b]);
%constraint makespan <= max_reach_h;

%Main constraints
constraint forall(b in BLOCKS) (cornery[b] + height[b] <= makespan);
constraint forall(b in BLOCKS) (cornery[b]  < makespan); %?
constraint forall(b in BLOCKS) (cornerx[b] + width[b] <= max_width);
constraint diffn(cornerx, cornery, width, height); %non overlapping rectangles

%Implied constraints
constraint cumulative(cornery, height, width, max_width);
constraint cumulative(cornerx, width,height,max(min_reach_h,max(height))); %makespan

%cumulative such that starting from cornerx or y with duration height or width and resource requirments the other we don't exceed the max_width and max height


%Extra
% Width of blocks > max_width / 2 piazzo come primo blocco quello più grande
array[BLOCKS] of var bool: R;

constraint forall(b in BLOCKS)(R[b] <-> width[b] > max_width / 2);

constraint forall(b in BLOCKS)(
  if R[b]
  then cornerx[b] = 0
  endif
);


% Symmetry breaking constraints, row/columns symmetry (vedi immagine in download)
constraint forall (i,j in BLOCKS where i < j) ((cornerx[i] == cornerx[j] /\ width[i] == width[j]) -> cornery[i] <= cornery[j] );  

constraint forall (i,j in BLOCKS where i < j) ((cornery[i] == cornery[j] /\ height[i] == height[j]) -> cornerx[i] <= cornerx[j] );  



% force the biggest block to be always to the bottom left of the second biggest in order to break symmetries
%constraint cornerx[1] <= cornerx[2] /\ cornery[1] <= cornery[2];

% Search strategies
var float: ratio = w/h;

%GECODE
/*
solve :: 
if ratio > 0.28 /\ ratio< 0.38 
then seq_search([int_search([makespan], smallest, indomain_min),
                 int_search(cornerx, input_order, indomain_min)
                 ])%::restart_luby(150)
elseif ratio <= 0.28 
then seq_search([int_search([makespan], smallest, indomain_min),
                 int_search(cornery, input_order, indomain_min)
                 ])%::restart_luby(150)
else seq_search([]) endif 
minimize makespan;*/

/*
%With LNS
solve::seq_search([int_search([makespan], smallest, indomain_min),
                 int_search(cornerx, dom_w_deg, indomain_random)
                 ])
                 ::restart_luby(150)
                 ::relax_and_reconstruct(cornerx,85)
minimize makespan;
*/

%CHUFFED (best one)
solve :: seq_search([int_search([makespan], smallest, indomain_min),
                 int_search(cornerx, input_order, indomain_min)
                 ])::restart_luby(150) minimize makespan;


% Output
output["\(max_width) \(makespan)\n\(n_blocks)\n"] ++
  ["\(width[b]) \(height[b]) \(cornerx[b]) \(cornery[b])\n" | b in BLOCKS];
  
  
  
  
/*
% Parameters to control the search heuristic and restart strategy
int: heuristic = 6;
int: restart = 4;

ann: search_ann_x = 
if heuristic == 1 then
  int_search(cornerx, input_order, indomain_min)
elseif heuristic == 2 then
  int_search(cornerx, first_fail, indomain_min)
elseif heuristic == 3 then
  int_search(cornerx, dom_w_deg, indomain_min)
elseif heuristic == 4 then
  int_search(cornerx, input_order, indomain_random)
elseif heuristic == 5 then
  int_search(cornerx, first_fail, indomain_random)
else
  int_search(cornerx, dom_w_deg, indomain_random)
endif;

ann: search_ann_y = 
if heuristic == 1 then
  int_search(cornery, input_order, indomain_min)
elseif heuristic == 2 then
  int_search(cornery, first_fail, indomain_min)
elseif heuristic == 3 then
  int_search(cornery, dom_w_deg, indomain_min)
elseif heuristic == 4 then
  int_search(cornery, input_order, indomain_random)
elseif heuristic == 5 then
  int_search(cornery, first_fail, indomain_random)
else
  int_search(cornery, dom_w_deg, indomain_random)
endif;

ann: restart_ann =
if restart == 1 then
  restart_constant(100)
elseif restart == 2 then
  restart_linear(100)
elseif restart == 3 then
  restart_geometric(1.5,100)
elseif restart == 4 then
  restart_luby(100)
else
  restart_none
endif;

solve :: search_ann_x
      :: search_ann_y
      :: restart_ann
         minimize l;
*/