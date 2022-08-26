; benchmark generated from python API
(set-info :status unknown)
(declare-fun makespan () Int)
(declare-fun 0_y () Int)
(declare-fun 0_x () Int)
(declare-fun ud_1_3 () Bool)
(declare-fun 1_y () Int)
(declare-fun 1_x () Int)
(declare-fun lr_2_1 () Bool)
(declare-fun 2_y () Int)
(declare-fun 2_x () Int)
(declare-fun 3_y () Int)
(declare-fun 3_x () Int)
(declare-fun ud_4_3 () Bool)
(declare-fun 4_y () Int)
(declare-fun 4_x () Int)
(declare-fun 5_y () Int)
(declare-fun 5_x () Int)
(declare-fun lr_1_2 () Bool)
(declare-fun ud_1_2 () Bool)
(declare-fun ud_2_1 () Bool)
(declare-fun lr_1_3 () Bool)
(declare-fun lr_3_1 () Bool)
(declare-fun ud_3_1 () Bool)
(declare-fun lr_1_4 () Bool)
(declare-fun ud_1_4 () Bool)
(declare-fun lr_4_1 () Bool)
(declare-fun ud_4_1 () Bool)
(declare-fun lr_1_5 () Bool)
(declare-fun ud_1_5 () Bool)
(declare-fun lr_5_1 () Bool)
(declare-fun ud_5_1 () Bool)
(declare-fun lr_1_6 () Bool)
(declare-fun ud_1_6 () Bool)
(declare-fun lr_6_1 () Bool)
(declare-fun ud_6_1 () Bool)
(declare-fun lr_2_3 () Bool)
(declare-fun ud_2_3 () Bool)
(declare-fun lr_3_2 () Bool)
(declare-fun ud_3_2 () Bool)
(declare-fun lr_2_4 () Bool)
(declare-fun ud_2_4 () Bool)
(declare-fun lr_4_2 () Bool)
(declare-fun ud_4_2 () Bool)
(declare-fun lr_2_5 () Bool)
(declare-fun ud_2_5 () Bool)
(declare-fun lr_5_2 () Bool)
(declare-fun ud_5_2 () Bool)
(declare-fun lr_2_6 () Bool)
(declare-fun ud_2_6 () Bool)
(declare-fun lr_6_2 () Bool)
(declare-fun ud_6_2 () Bool)
(declare-fun lr_3_4 () Bool)
(declare-fun ud_3_4 () Bool)
(declare-fun lr_4_3 () Bool)
(declare-fun lr_3_5 () Bool)
(declare-fun ud_3_5 () Bool)
(declare-fun lr_5_3 () Bool)
(declare-fun ud_5_3 () Bool)
(declare-fun lr_3_6 () Bool)
(declare-fun ud_3_6 () Bool)
(declare-fun lr_6_3 () Bool)
(declare-fun ud_6_3 () Bool)
(declare-fun lr_4_5 () Bool)
(declare-fun ud_4_5 () Bool)
(declare-fun lr_5_4 () Bool)
(declare-fun ud_5_4 () Bool)
(declare-fun lr_4_6 () Bool)
(declare-fun ud_4_6 () Bool)
(declare-fun lr_6_4 () Bool)
(declare-fun ud_6_4 () Bool)
(declare-fun lr_5_6 () Bool)
(declare-fun ud_5_6 () Bool)
(declare-fun lr_6_5 () Bool)
(declare-fun ud_6_5 () Bool)
(assert
 (>= makespan 10))
(assert
 (<= makespan 15))
(assert
 (let ((?x7932 (+ 0_y 6)))
 (<= ?x7932 makespan)))
(assert
 (let ((?x8864 (+ 0_x 4)))
 (<= ?x8864 10)))
(assert
 (>= 0_x 0))
(assert
 (<= 0_y 9))
(assert
 (>= 0_y 0))
(assert
 (<= 0_x 3))
(assert
 (= ud_1_3 false))
(assert
 (let ((?x4565 (+ 1_y 4)))
 (<= ?x4565 makespan)))
(assert
 (let ((?x11664 (+ 1_x 4)))
 (<= ?x11664 10)))
(assert
 (>= 1_x 0))
(assert
 (<= 1_y 11))
(assert
 (>= 1_y 0))
(assert
 (= lr_2_1 false))
(assert
 (let ((?x11297 (+ 2_y 7)))
 (<= ?x11297 makespan)))
(assert
 (let ((?x11548 (+ 2_x 3)))
 (<= ?x11548 10)))
(assert
 (>= 2_x 0))
(assert
 (<= 2_y 8))
(assert
 (>= 2_y 0))
(assert
 (<= 2_y 4))
(assert
 (let ((?x11462 (+ 3_y 6)))
 (<= ?x11462 makespan)))
(assert
 (let ((?x11431 (+ 3_x 3)))
 (<= ?x11431 10)))
(assert
 (>= 3_x 0))
(assert
 (<= 3_y 9))
(assert
 (>= 3_y 0))
(assert
 (= ud_4_3 false))
(assert
 (let ((?x10871 (+ 4_y 4)))
 (<= ?x10871 makespan)))
(assert
 (let ((?x2482 (+ 4_x 3)))
 (<= ?x2482 10)))
(assert
 (>= 4_x 0))
(assert
 (<= 4_y 11))
(assert
 (>= 4_y 0))
(assert
 (let ((?x963 (+ 5_y 3)))
 (<= ?x963 makespan)))
(assert
 (let ((?x11238 (+ 5_x 3)))
 (<= ?x11238 10)))
(assert
 (>= 5_x 0))
(assert
 (<= 5_y 12))
(assert
 (>= 5_y 0))
(assert
 (= (<= (+ 0_x 4) 1_x) lr_1_2))
(assert
 (= (<= (+ 0_y 6) 1_y) ud_1_2))
(assert
 (= (<= (+ 1_x 4) 0_x) lr_2_1))
(assert
 (= (<= (+ 1_y 4) 0_y) ud_2_1))
(assert
 (or lr_1_2 lr_2_1 ud_1_2 ud_2_1))
(assert
 (let (($x11021 (< makespan 10)))
 (=> $x11021 (= ud_1_2 false))))
(assert
 (let (($x11021 (< makespan 10)))
 (=> $x11021 (= ud_2_1 false))))
(assert
 (= (<= (+ 0_x 4) 2_x) lr_1_3))
(assert
 (= (<= (+ 0_y 6) 2_y) ud_1_3))
(assert
 (= (<= (+ 2_x 3) 0_x) lr_3_1))
(assert
 (= (<= (+ 2_y 7) 0_y) ud_3_1))
(assert
 (or lr_1_3 lr_3_1 ud_1_3 ud_3_1))
(assert
 (let (($x3655 (= ud_1_3 false)))
 (let (($x10810 (< makespan 13)))
 (=> $x10810 $x3655))))
(assert
 (let (($x10810 (< makespan 13)))
 (=> $x10810 (= ud_3_1 false))))
(assert
 (= (<= (+ 0_x 4) 3_x) lr_1_4))
(assert
 (= (<= (+ 0_y 6) 3_y) ud_1_4))
(assert
 (= (<= (+ 3_x 3) 0_x) lr_4_1))
(assert
 (= (<= (+ 3_y 6) 0_y) ud_4_1))
(assert
 (or lr_1_4 lr_4_1 ud_1_4 ud_4_1))
(assert
 (let (($x10599 (< makespan 12)))
 (=> $x10599 (= ud_1_4 false))))
(assert
 (let (($x10599 (< makespan 12)))
 (=> $x10599 (= ud_4_1 false))))
(assert
 (= (<= (+ 0_x 4) 4_x) lr_1_5))
(assert
 (= (<= (+ 0_y 6) 4_y) ud_1_5))
(assert
 (= (<= (+ 4_x 3) 0_x) lr_5_1))
(assert
 (= (<= (+ 4_y 4) 0_y) ud_5_1))
(assert
 (or lr_1_5 lr_5_1 ud_1_5 ud_5_1))
(assert
 (let (($x11021 (< makespan 10)))
 (=> $x11021 (= ud_1_5 false))))
(assert
 (let (($x11021 (< makespan 10)))
 (=> $x11021 (= ud_5_1 false))))
(assert
 (= (<= (+ 0_x 4) 5_x) lr_1_6))
(assert
 (= (<= (+ 0_y 6) 5_y) ud_1_6))
(assert
 (= (<= (+ 5_x 3) 0_x) lr_6_1))
(assert
 (= (<= (+ 5_y 3) 0_y) ud_6_1))
(assert
 (or lr_1_6 lr_6_1 ud_1_6 ud_6_1))
(assert
 (let (($x10202 (< makespan 9)))
 (=> $x10202 (= ud_1_6 false))))
(assert
 (let (($x10202 (< makespan 9)))
 (=> $x10202 (= ud_6_1 false))))
(assert
 (= (<= (+ 1_x 4) 2_x) lr_2_3))
(assert
 (= (<= (+ 1_y 4) 2_y) ud_2_3))
(assert
 (= (<= (+ 2_x 3) 1_x) lr_3_2))
(assert
 (= (<= (+ 2_y 7) 1_y) ud_3_2))
(assert
 (or lr_2_3 lr_3_2 ud_2_3 ud_3_2))
(assert
 (let (($x9991 (< makespan 11)))
 (=> $x9991 (= ud_2_3 false))))
(assert
 (let (($x9991 (< makespan 11)))
 (=> $x9991 (= ud_3_2 false))))
(assert
 (= (<= (+ 1_x 4) 3_x) lr_2_4))
(assert
 (= (<= (+ 1_y 4) 3_y) ud_2_4))
(assert
 (= (<= (+ 3_x 3) 1_x) lr_4_2))
(assert
 (= (<= (+ 3_y 6) 1_y) ud_4_2))
(assert
 (or lr_2_4 lr_4_2 ud_2_4 ud_4_2))
(assert
 (let (($x11021 (< makespan 10)))
 (=> $x11021 (= ud_2_4 false))))
(assert
 (let (($x11021 (< makespan 10)))
 (=> $x11021 (= ud_4_2 false))))
(assert
 (= (<= (+ 1_x 4) 4_x) lr_2_5))
(assert
 (= (<= (+ 1_y 4) 4_y) ud_2_5))
(assert
 (= (<= (+ 4_x 3) 1_x) lr_5_2))
(assert
 (= (<= (+ 4_y 4) 1_y) ud_5_2))
(assert
 (or lr_2_5 lr_5_2 ud_2_5 ud_5_2))
(assert
 (let (($x9652 (< makespan 8)))
 (=> $x9652 (= ud_2_5 false))))
(assert
 (let (($x9652 (< makespan 8)))
 (=> $x9652 (= ud_5_2 false))))
(assert
 (= (<= (+ 1_x 4) 5_x) lr_2_6))
(assert
 (= (<= (+ 1_y 4) 5_y) ud_2_6))
(assert
 (= (<= (+ 5_x 3) 1_x) lr_6_2))
(assert
 (= (<= (+ 5_y 3) 1_y) ud_6_2))
(assert
 (or lr_2_6 lr_6_2 ud_2_6 ud_6_2))
(assert
 (let (($x9456 (< makespan 7)))
 (=> $x9456 (= ud_2_6 false))))
(assert
 (let (($x9456 (< makespan 7)))
 (=> $x9456 (= ud_6_2 false))))
(assert
 (= (<= (+ 2_x 3) 3_x) lr_3_4))
(assert
 (= (<= (+ 2_y 7) 3_y) ud_3_4))
(assert
 (= (<= (+ 3_x 3) 2_x) lr_4_3))
(assert
 (= (<= (+ 3_y 6) 2_y) ud_4_3))
(assert
 (or lr_3_4 lr_4_3 ud_3_4 ud_4_3))
(assert
 (let (($x10810 (< makespan 13)))
 (=> $x10810 (= ud_3_4 false))))
(assert
 (let (($x3531 (= ud_4_3 false)))
 (let (($x10810 (< makespan 13)))
 (=> $x10810 $x3531))))
(assert
 (= (<= (+ 2_x 3) 4_x) lr_3_5))
(assert
 (= (<= (+ 2_y 7) 4_y) ud_3_5))
(assert
 (= (<= (+ 4_x 3) 2_x) lr_5_3))
(assert
 (= (<= (+ 4_y 4) 2_y) ud_5_3))
(assert
 (or lr_3_5 lr_5_3 ud_3_5 ud_5_3))
(assert
 (let (($x9991 (< makespan 11)))
 (=> $x9991 (= ud_3_5 false))))
(assert
 (let (($x9991 (< makespan 11)))
 (=> $x9991 (= ud_5_3 false))))
(assert
 (= (<= (+ 2_x 3) 5_x) lr_3_6))
(assert
 (= (<= (+ 2_y 7) 5_y) ud_3_6))
(assert
 (= (<= (+ 5_x 3) 2_x) lr_6_3))
(assert
 (= (<= (+ 5_y 3) 2_y) ud_6_3))
(assert
 (or lr_3_6 lr_6_3 ud_3_6 ud_6_3))
(assert
 (let (($x11021 (< makespan 10)))
 (=> $x11021 (= ud_3_6 false))))
(assert
 (let (($x11021 (< makespan 10)))
 (=> $x11021 (= ud_6_3 false))))
(assert
 (= (<= (+ 3_x 3) 4_x) lr_4_5))
(assert
 (= (<= (+ 3_y 6) 4_y) ud_4_5))
(assert
 (= (<= (+ 4_x 3) 3_x) lr_5_4))
(assert
 (= (<= (+ 4_y 4) 3_y) ud_5_4))
(assert
 (or lr_4_5 lr_5_4 ud_4_5 ud_5_4))
(assert
 (let (($x11021 (< makespan 10)))
 (=> $x11021 (= ud_4_5 false))))
(assert
 (let (($x11021 (< makespan 10)))
 (=> $x11021 (= ud_5_4 false))))
(assert
 (= (<= (+ 3_x 3) 5_x) lr_4_6))
(assert
 (= (<= (+ 3_y 6) 5_y) ud_4_6))
(assert
 (= (<= (+ 5_x 3) 3_x) lr_6_4))
(assert
 (= (<= (+ 5_y 3) 3_y) ud_6_4))
(assert
 (or lr_4_6 lr_6_4 ud_4_6 ud_6_4))
(assert
 (let (($x10202 (< makespan 9)))
 (=> $x10202 (= ud_4_6 false))))
(assert
 (let (($x10202 (< makespan 9)))
 (=> $x10202 (= ud_6_4 false))))
(assert
 (= (<= (+ 4_x 3) 5_x) lr_5_6))
(assert
 (= (<= (+ 4_y 4) 5_y) ud_5_6))
(assert
 (= (<= (+ 5_x 3) 4_x) lr_6_5))
(assert
 (= (<= (+ 5_y 3) 4_y) ud_6_5))
(assert
 (or lr_5_6 lr_6_5 ud_5_6 ud_6_5))
(assert
 (let (($x9456 (< makespan 7)))
 (=> $x9456 (= ud_5_6 false))))
(assert
 (let (($x9456 (< makespan 7)))
 (=> $x9456 (= ud_6_5 false))))
(check-sat)
