; benchmark generated from python API
(set-info :status unknown)
(declare-fun makespan () Int)
(declare-fun 0_y () Int)
(declare-fun 0_x () Int)
(declare-fun 1_y () Int)
(declare-fun 1_x () Int)
(declare-fun lr_2_1 () Bool)
(declare-fun 2_y () Int)
(declare-fun 2_x () Int)
(declare-fun lr_3_1 () Bool)
(declare-fun ud_3_1 () Bool)
(declare-fun 3_y () Int)
(declare-fun 3_x () Int)
(declare-fun lr_4_1 () Bool)
(declare-fun lr_1_2 () Bool)
(declare-fun ud_1_2 () Bool)
(declare-fun ud_2_1 () Bool)
(declare-fun lr_1_3 () Bool)
(declare-fun ud_1_3 () Bool)
(declare-fun lr_1_4 () Bool)
(declare-fun ud_1_4 () Bool)
(declare-fun ud_4_1 () Bool)
(declare-fun lr_2_3 () Bool)
(declare-fun ud_2_3 () Bool)
(declare-fun lr_3_2 () Bool)
(declare-fun ud_3_2 () Bool)
(declare-fun lr_2_4 () Bool)
(declare-fun ud_2_4 () Bool)
(declare-fun lr_4_2 () Bool)
(declare-fun ud_4_2 () Bool)
(declare-fun lr_3_4 () Bool)
(declare-fun ud_3_4 () Bool)
(declare-fun lr_4_3 () Bool)
(declare-fun ud_4_3 () Bool)
(assert
 (>= makespan 8))
(assert
 (<= makespan 13))
(assert
 (let ((?x61 (+ 0_y 5)))
 (<= ?x61 makespan)))
(assert
 (let ((?x63 (+ 0_x 5)))
 (<= ?x63 8)))
(assert
 (>= 0_x 0))
(assert
 (<= 0_y 8))
(assert
 (>= 0_y 0))
(assert
 (<= 0_x 1))
(assert
 (<= 0_y 4))
(assert
 (let ((?x80 (+ 1_y 3)))
 (<= ?x80 makespan)))
(assert
 (let ((?x82 (+ 1_x 5)))
 (<= ?x82 8)))
(assert
 (>= 1_x 0))
(assert
 (<= 1_y 10))
(assert
 (>= 1_y 0))
(assert
 (= lr_2_1 false))
(assert
 (let ((?x94 (+ 2_y 5)))
 (<= ?x94 makespan)))
(assert
 (let ((?x96 (+ 2_x 3)))
 (<= ?x96 8)))
(assert
 (>= 2_x 0))
(assert
 (<= 2_y 8))
(assert
 (>= 2_y 0))
(assert
 (= lr_3_1 false))
(assert
 (= ud_3_1 false))
(assert
 (let ((?x108 (+ 3_y 3)))
 (<= ?x108 makespan)))
(assert
 (let ((?x110 (+ 3_x 3)))
 (<= ?x110 8)))
(assert
 (>= 3_x 0))
(assert
 (<= 3_y 10))
(assert
 (>= 3_y 0))
(assert
 (= lr_4_1 false))
(assert
 (= (<= (+ 0_x 5) 1_x) lr_1_2))
(assert
 (= (<= (+ 0_y 5) 1_y) ud_1_2))
(assert
 (= (<= (+ 1_x 5) 0_x) lr_2_1))
(assert
 (= (<= (+ 1_y 3) 0_y) ud_2_1))
(assert
 (or lr_1_2 lr_2_1 ud_1_2 ud_2_1))
(assert
 (= lr_1_2 false))
(assert
 (= lr_2_1 false))
(assert
 (let (($x147 (< makespan 8)))
 (=> $x147 (= ud_1_2 false))))
(assert
 (let (($x147 (< makespan 8)))
 (=> $x147 (= ud_2_1 false))))
(assert
 (= (<= (+ 0_x 5) 2_x) lr_1_3))
(assert
 (= (<= (+ 0_y 5) 2_y) ud_1_3))
(assert
 (= (<= (+ 2_x 3) 0_x) lr_3_1))
(assert
 (= (<= (+ 2_y 5) 0_y) ud_3_1))
(assert
 (or lr_1_3 lr_3_1 ud_1_3 ud_3_1))
(assert
 (let (($x182 (< makespan 10)))
 (=> $x182 (= ud_1_3 false))))
(assert
 (let (($x106 (= ud_3_1 false)))
 (let (($x182 (< makespan 10)))
 (=> $x182 $x106))))
(assert
 (= (<= (+ 0_x 5) 3_x) lr_1_4))
(assert
 (= (<= (+ 0_y 5) 3_y) ud_1_4))
(assert
 (= (<= (+ 3_x 3) 0_x) lr_4_1))
(assert
 (= (<= (+ 3_y 3) 0_y) ud_4_1))
(assert
 (or lr_1_4 lr_4_1 ud_1_4 ud_4_1))
(assert
 (let (($x147 (< makespan 8)))
 (=> $x147 (= ud_1_4 false))))
(assert
 (let (($x147 (< makespan 8)))
 (=> $x147 (= ud_4_1 false))))
(assert
 (= (<= (+ 1_x 5) 2_x) lr_2_3))
(assert
 (= (<= (+ 1_y 3) 2_y) ud_2_3))
(assert
 (= (<= (+ 2_x 3) 1_x) lr_3_2))
(assert
 (= (<= (+ 2_y 5) 1_y) ud_3_2))
(assert
 (or lr_2_3 lr_3_2 ud_2_3 ud_3_2))
(assert
 (let (($x147 (< makespan 8)))
 (=> $x147 (= ud_2_3 false))))
(assert
 (let (($x147 (< makespan 8)))
 (=> $x147 (= ud_3_2 false))))
(assert
 (= (<= (+ 1_x 5) 3_x) lr_2_4))
(assert
 (= (<= (+ 1_y 3) 3_y) ud_2_4))
(assert
 (= (<= (+ 3_x 3) 1_x) lr_4_2))
(assert
 (= (<= (+ 3_y 3) 1_y) ud_4_2))
(assert
 (or lr_2_4 lr_4_2 ud_2_4 ud_4_2))
(assert
 (let (($x271 (< makespan 6)))
 (=> $x271 (= ud_2_4 false))))
(assert
 (let (($x271 (< makespan 6)))
 (=> $x271 (= ud_4_2 false))))
(assert
 (= (<= (+ 2_x 3) 3_x) lr_3_4))
(assert
 (= (<= (+ 2_y 5) 3_y) ud_3_4))
(assert
 (= (<= (+ 3_x 3) 2_x) lr_4_3))
(assert
 (= (<= (+ 3_y 3) 2_y) ud_4_3))
(assert
 (or lr_3_4 lr_4_3 ud_3_4 ud_4_3))
(assert
 (let (($x147 (< makespan 8)))
 (=> $x147 (= ud_3_4 false))))
(assert
 (let (($x147 (< makespan 8)))
 (=> $x147 (= ud_4_3 false))))
(check-sat)
