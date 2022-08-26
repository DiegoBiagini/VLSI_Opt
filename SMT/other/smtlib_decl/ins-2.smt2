; benchmark generated from python API
(set-info :status unknown)
(declare-fun makespan () Int)
(declare-fun 0_y () Int)
(declare-fun 0_x () Int)
(declare-fun 1_y () Int)
(declare-fun 1_x () Int)
(declare-fun ud_2_1 () Bool)
(declare-fun 2_y () Int)
(declare-fun 2_x () Int)
(declare-fun ud_3_1 () Bool)
(declare-fun 3_y () Int)
(declare-fun 3_x () Int)
(declare-fun ud_4_1 () Bool)
(declare-fun 4_y () Int)
(declare-fun 4_x () Int)
(declare-fun ud_5_1 () Bool)
(declare-fun lr_1_2 () Bool)
(declare-fun ud_1_2 () Bool)
(declare-fun lr_2_1 () Bool)
(declare-fun lr_1_3 () Bool)
(declare-fun ud_1_3 () Bool)
(declare-fun lr_3_1 () Bool)
(declare-fun lr_1_4 () Bool)
(declare-fun ud_1_4 () Bool)
(declare-fun lr_4_1 () Bool)
(declare-fun lr_1_5 () Bool)
(declare-fun ud_1_5 () Bool)
(declare-fun lr_5_1 () Bool)
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
(declare-fun lr_3_4 () Bool)
(declare-fun ud_3_4 () Bool)
(declare-fun lr_4_3 () Bool)
(declare-fun ud_4_3 () Bool)
(declare-fun lr_3_5 () Bool)
(declare-fun ud_3_5 () Bool)
(declare-fun lr_5_3 () Bool)
(declare-fun ud_5_3 () Bool)
(declare-fun lr_4_5 () Bool)
(declare-fun ud_4_5 () Bool)
(declare-fun lr_5_4 () Bool)
(declare-fun ud_5_4 () Bool)
(assert
 (>= makespan 9))
(assert
 (<= makespan 14))
(assert
 (let ((?x1693 (+ 0_y 9)))
 (<= ?x1693 makespan)))
(assert
 (let ((?x7829 (+ 0_x 3)))
 (<= ?x7829 9)))
(assert
 (>= 0_x 0))
(assert
 (<= 0_y 5))
(assert
 (>= 0_y 0))
(assert
 (<= 0_x 3))
(assert
 (<= 0_y 2))
(assert
 (let ((?x7814 (+ 1_y 6)))
 (<= ?x7814 makespan)))
(assert
 (let ((?x7810 (+ 1_x 3)))
 (<= ?x7810 9)))
(assert
 (>= 1_x 0))
(assert
 (<= 1_y 8))
(assert
 (>= 1_y 0))
(assert
 (= ud_2_1 false))
(assert
 (let ((?x3094 (+ 2_y 5)))
 (<= ?x3094 makespan)))
(assert
 (let ((?x7792 (+ 2_x 3)))
 (<= ?x7792 9)))
(assert
 (>= 2_x 0))
(assert
 (<= 2_y 9))
(assert
 (>= 2_y 0))
(assert
 (= ud_3_1 false))
(assert
 (let ((?x7780 (+ 3_y 4)))
 (<= ?x7780 makespan)))
(assert
 (let ((?x7775 (+ 3_x 3)))
 (<= ?x7775 9)))
(assert
 (>= 3_x 0))
(assert
 (<= 3_y 10))
(assert
 (>= 3_y 0))
(assert
 (= ud_4_1 false))
(assert
 (let ((?x7760 (+ 4_y 3)))
 (<= ?x7760 makespan)))
(assert
 (let ((?x7756 (+ 4_x 3)))
 (<= ?x7756 9)))
(assert
 (>= 4_x 0))
(assert
 (<= 4_y 11))
(assert
 (>= 4_y 0))
(assert
 (= ud_5_1 false))
(assert
 (= (<= (+ 0_x 3) 1_x) lr_1_2))
(assert
 (= (<= (+ 0_y 9) 1_y) ud_1_2))
(assert
 (= (<= (+ 1_x 3) 0_x) lr_2_1))
(assert
 (= (<= (+ 1_y 6) 0_y) ud_2_1))
(assert
 (or lr_1_2 lr_2_1 ud_1_2 ud_2_1))
(assert
 (let (($x2320 (< makespan 15)))
 (=> $x2320 (= ud_1_2 false))))
(assert
 (let (($x7796 (= ud_2_1 false)))
 (let (($x2320 (< makespan 15)))
 (=> $x2320 $x7796))))
(assert
 (= (<= (+ 0_x 3) 2_x) lr_1_3))
(assert
 (= (<= (+ 0_y 9) 2_y) ud_1_3))
(assert
 (= (<= (+ 2_x 3) 0_x) lr_3_1))
(assert
 (= (<= (+ 2_y 5) 0_y) ud_3_1))
(assert
 (or lr_1_3 lr_3_1 ud_1_3 ud_3_1))
(assert
 (let (($x3348 (< makespan 14)))
 (=> $x3348 (= ud_1_3 false))))
(assert
 (let (($x7784 (= ud_3_1 false)))
 (let (($x3348 (< makespan 14)))
 (=> $x3348 $x7784))))
(assert
 (= (<= (+ 0_x 3) 3_x) lr_1_4))
(assert
 (= (<= (+ 0_y 9) 3_y) ud_1_4))
(assert
 (= (<= (+ 3_x 3) 0_x) lr_4_1))
(assert
 (= (<= (+ 3_y 4) 0_y) ud_4_1))
(assert
 (or lr_1_4 lr_4_1 ud_1_4 ud_4_1))
(assert
 (let (($x7603 (< makespan 13)))
 (=> $x7603 (= ud_1_4 false))))
(assert
 (let (($x3263 (= ud_4_1 false)))
 (let (($x7603 (< makespan 13)))
 (=> $x7603 $x3263))))
(assert
 (= (<= (+ 0_x 3) 4_x) lr_1_5))
(assert
 (= (<= (+ 0_y 9) 4_y) ud_1_5))
(assert
 (= (<= (+ 4_x 3) 0_x) lr_5_1))
(assert
 (= (<= (+ 4_y 3) 0_y) ud_5_1))
(assert
 (or lr_1_5 lr_5_1 ud_1_5 ud_5_1))
(assert
 (let (($x7559 (< makespan 12)))
 (=> $x7559 (= ud_1_5 false))))
(assert
 (let (($x7742 (= ud_5_1 false)))
 (let (($x7559 (< makespan 12)))
 (=> $x7559 $x7742))))
(assert
 (= (<= (+ 1_x 3) 2_x) lr_2_3))
(assert
 (= (<= (+ 1_y 6) 2_y) ud_2_3))
(assert
 (= (<= (+ 2_x 3) 1_x) lr_3_2))
(assert
 (= (<= (+ 2_y 5) 1_y) ud_3_2))
(assert
 (or lr_2_3 lr_3_2 ud_2_3 ud_3_2))
(assert
 (let (($x7513 (< makespan 11)))
 (=> $x7513 (= ud_2_3 false))))
(assert
 (let (($x7513 (< makespan 11)))
 (=> $x7513 (= ud_3_2 false))))
(assert
 (= (<= (+ 1_x 3) 3_x) lr_2_4))
(assert
 (= (<= (+ 1_y 6) 3_y) ud_2_4))
(assert
 (= (<= (+ 3_x 3) 1_x) lr_4_2))
(assert
 (= (<= (+ 3_y 4) 1_y) ud_4_2))
(assert
 (or lr_2_4 lr_4_2 ud_2_4 ud_4_2))
(assert
 (let (($x7465 (< makespan 10)))
 (=> $x7465 (= ud_2_4 false))))
(assert
 (let (($x7465 (< makespan 10)))
 (=> $x7465 (= ud_4_2 false))))
(assert
 (= (<= (+ 1_x 3) 4_x) lr_2_5))
(assert
 (= (<= (+ 1_y 6) 4_y) ud_2_5))
(assert
 (= (<= (+ 4_x 3) 1_x) lr_5_2))
(assert
 (= (<= (+ 4_y 3) 1_y) ud_5_2))
(assert
 (or lr_2_5 lr_5_2 ud_2_5 ud_5_2))
(assert
 (let (($x7419 (< makespan 9)))
 (=> $x7419 (= ud_2_5 false))))
(assert
 (let (($x7419 (< makespan 9)))
 (=> $x7419 (= ud_5_2 false))))
(assert
 (= (<= (+ 2_x 3) 3_x) lr_3_4))
(assert
 (= (<= (+ 2_y 5) 3_y) ud_3_4))
(assert
 (= (<= (+ 3_x 3) 2_x) lr_4_3))
(assert
 (= (<= (+ 3_y 4) 2_y) ud_4_3))
(assert
 (or lr_3_4 lr_4_3 ud_3_4 ud_4_3))
(assert
 (let (($x7419 (< makespan 9)))
 (=> $x7419 (= ud_3_4 false))))
(assert
 (let (($x7419 (< makespan 9)))
 (=> $x7419 (= ud_4_3 false))))
(assert
 (= (<= (+ 2_x 3) 4_x) lr_3_5))
(assert
 (= (<= (+ 2_y 5) 4_y) ud_3_5))
(assert
 (= (<= (+ 4_x 3) 2_x) lr_5_3))
(assert
 (= (<= (+ 4_y 3) 2_y) ud_5_3))
(assert
 (or lr_3_5 lr_5_3 ud_3_5 ud_5_3))
(assert
 (let (($x7329 (< makespan 8)))
 (=> $x7329 (= ud_3_5 false))))
(assert
 (let (($x7329 (< makespan 8)))
 (=> $x7329 (= ud_5_3 false))))
(assert
 (= (<= (+ 3_x 3) 4_x) lr_4_5))
(assert
 (= (<= (+ 3_y 4) 4_y) ud_4_5))
(assert
 (= (<= (+ 4_x 3) 3_x) lr_5_4))
(assert
 (= (<= (+ 4_y 3) 3_y) ud_5_4))
(assert
 (or lr_4_5 lr_5_4 ud_4_5 ud_5_4))
(assert
 (let (($x4265 (< makespan 7)))
 (=> $x4265 (= ud_4_5 false))))
(assert
 (let (($x4265 (< makespan 7)))
 (=> $x4265 (= ud_5_4 false))))
(check-sat)
