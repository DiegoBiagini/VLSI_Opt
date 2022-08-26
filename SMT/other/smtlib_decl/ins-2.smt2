; benchmark generated from python API
(set-info :status unknown)
(declare-fun makespan () Int)
(declare-fun y_0 () Int)
(declare-fun x_0 () Int)
(declare-fun y_1 () Int)
(declare-fun x_1 () Int)
(declare-fun ud_2_1 () Bool)
(declare-fun y_2 () Int)
(declare-fun x_2 () Int)
(declare-fun ud_3_1 () Bool)
(declare-fun y_3 () Int)
(declare-fun x_3 () Int)
(declare-fun ud_4_1 () Bool)
(declare-fun y_4 () Int)
(declare-fun x_4 () Int)
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
 (let ((?x2521 (+ y_0 9)))
 (<= ?x2521 makespan)))
(assert
 (let ((?x7829 (+ x_0 3)))
 (<= ?x7829 9)))
(assert
 (>= x_0 0))
(assert
 (<= y_0 5))
(assert
 (>= y_0 0))
(assert
 (<= x_0 3))
(assert
 (<= y_0 2))
(assert
 (let ((?x7814 (+ y_1 6)))
 (<= ?x7814 makespan)))
(assert
 (let ((?x7810 (+ x_1 3)))
 (<= ?x7810 9)))
(assert
 (>= x_1 0))
(assert
 (<= y_1 8))
(assert
 (>= y_1 0))
(assert
 (= ud_2_1 false))
(assert
 (let ((?x295 (+ y_2 5)))
 (<= ?x295 makespan)))
(assert
 (let ((?x7792 (+ x_2 3)))
 (<= ?x7792 9)))
(assert
 (>= x_2 0))
(assert
 (<= y_2 9))
(assert
 (>= y_2 0))
(assert
 (= ud_3_1 false))
(assert
 (let ((?x7780 (+ y_3 4)))
 (<= ?x7780 makespan)))
(assert
 (let ((?x7775 (+ x_3 3)))
 (<= ?x7775 9)))
(assert
 (>= x_3 0))
(assert
 (<= y_3 10))
(assert
 (>= y_3 0))
(assert
 (= ud_4_1 false))
(assert
 (let ((?x7760 (+ y_4 3)))
 (<= ?x7760 makespan)))
(assert
 (let ((?x7756 (+ x_4 3)))
 (<= ?x7756 9)))
(assert
 (>= x_4 0))
(assert
 (<= y_4 11))
(assert
 (>= y_4 0))
(assert
 (= ud_5_1 false))
(assert
 (= (<= (+ x_0 3) x_1) lr_1_2))
(assert
 (= (<= (+ y_0 9) y_1) ud_1_2))
(assert
 (= (<= (+ x_1 3) x_0) lr_2_1))
(assert
 (= (<= (+ y_1 6) y_0) ud_2_1))
(assert
 (or lr_1_2 lr_2_1 ud_1_2 ud_2_1))
(assert
 (let (($x1625 (< makespan 15)))
 (=> $x1625 (= ud_1_2 false))))
(assert
 (let (($x7796 (= ud_2_1 false)))
 (let (($x1625 (< makespan 15)))
 (=> $x1625 $x7796))))
(assert
 (= (<= (+ x_0 3) x_2) lr_1_3))
(assert
 (= (<= (+ y_0 9) y_2) ud_1_3))
(assert
 (= (<= (+ x_2 3) x_0) lr_3_1))
(assert
 (= (<= (+ y_2 5) y_0) ud_3_1))
(assert
 (or lr_1_3 lr_3_1 ud_1_3 ud_3_1))
(assert
 (let (($x1343 (< makespan 14)))
 (=> $x1343 (= ud_1_3 false))))
(assert
 (let (($x7784 (= ud_3_1 false)))
 (let (($x1343 (< makespan 14)))
 (=> $x1343 $x7784))))
(assert
 (= (<= (+ x_0 3) x_3) lr_1_4))
(assert
 (= (<= (+ y_0 9) y_3) ud_1_4))
(assert
 (= (<= (+ x_3 3) x_0) lr_4_1))
(assert
 (= (<= (+ y_3 4) y_0) ud_4_1))
(assert
 (or lr_1_4 lr_4_1 ud_1_4 ud_4_1))
(assert
 (let (($x7603 (< makespan 13)))
 (=> $x7603 (= ud_1_4 false))))
(assert
 (let (($x2602 (= ud_4_1 false)))
 (let (($x7603 (< makespan 13)))
 (=> $x7603 $x2602))))
(assert
 (= (<= (+ x_0 3) x_4) lr_1_5))
(assert
 (= (<= (+ y_0 9) y_4) ud_1_5))
(assert
 (= (<= (+ x_4 3) x_0) lr_5_1))
(assert
 (= (<= (+ y_4 3) y_0) ud_5_1))
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
 (= (<= (+ x_1 3) x_2) lr_2_3))
(assert
 (= (<= (+ y_1 6) y_2) ud_2_3))
(assert
 (= (<= (+ x_2 3) x_1) lr_3_2))
(assert
 (= (<= (+ y_2 5) y_1) ud_3_2))
(assert
 (or lr_2_3 lr_3_2 ud_2_3 ud_3_2))
(assert
 (let (($x7513 (< makespan 11)))
 (=> $x7513 (= ud_2_3 false))))
(assert
 (let (($x7513 (< makespan 11)))
 (=> $x7513 (= ud_3_2 false))))
(assert
 (= (<= (+ x_1 3) x_3) lr_2_4))
(assert
 (= (<= (+ y_1 6) y_3) ud_2_4))
(assert
 (= (<= (+ x_3 3) x_1) lr_4_2))
(assert
 (= (<= (+ y_3 4) y_1) ud_4_2))
(assert
 (or lr_2_4 lr_4_2 ud_2_4 ud_4_2))
(assert
 (let (($x7465 (< makespan 10)))
 (=> $x7465 (= ud_2_4 false))))
(assert
 (let (($x7465 (< makespan 10)))
 (=> $x7465 (= ud_4_2 false))))
(assert
 (= (<= (+ x_1 3) x_4) lr_2_5))
(assert
 (= (<= (+ y_1 6) y_4) ud_2_5))
(assert
 (= (<= (+ x_4 3) x_1) lr_5_2))
(assert
 (= (<= (+ y_4 3) y_1) ud_5_2))
(assert
 (or lr_2_5 lr_5_2 ud_2_5 ud_5_2))
(assert
 (let (($x7419 (< makespan 9)))
 (=> $x7419 (= ud_2_5 false))))
(assert
 (let (($x7419 (< makespan 9)))
 (=> $x7419 (= ud_5_2 false))))
(assert
 (= (<= (+ x_2 3) x_3) lr_3_4))
(assert
 (= (<= (+ y_2 5) y_3) ud_3_4))
(assert
 (= (<= (+ x_3 3) x_2) lr_4_3))
(assert
 (= (<= (+ y_3 4) y_2) ud_4_3))
(assert
 (or lr_3_4 lr_4_3 ud_3_4 ud_4_3))
(assert
 (let (($x7419 (< makespan 9)))
 (=> $x7419 (= ud_3_4 false))))
(assert
 (let (($x7419 (< makespan 9)))
 (=> $x7419 (= ud_4_3 false))))
(assert
 (= (<= (+ x_2 3) x_4) lr_3_5))
(assert
 (= (<= (+ y_2 5) y_4) ud_3_5))
(assert
 (= (<= (+ x_4 3) x_2) lr_5_3))
(assert
 (= (<= (+ y_4 3) y_2) ud_5_3))
(assert
 (or lr_3_5 lr_5_3 ud_3_5 ud_5_3))
(assert
 (let (($x7329 (< makespan 8)))
 (=> $x7329 (= ud_3_5 false))))
(assert
 (let (($x7329 (< makespan 8)))
 (=> $x7329 (= ud_5_3 false))))
(assert
 (= (<= (+ x_3 3) x_4) lr_4_5))
(assert
 (= (<= (+ y_3 4) y_4) ud_4_5))
(assert
 (= (<= (+ x_4 3) x_3) lr_5_4))
(assert
 (= (<= (+ y_4 3) y_3) ud_5_4))
(assert
 (or lr_4_5 lr_5_4 ud_4_5 ud_5_4))
(assert
 (let (($x5905 (< makespan 7)))
 (=> $x5905 (= ud_4_5 false))))
(assert
 (let (($x5905 (< makespan 7)))
 (=> $x5905 (= ud_5_4 false))))
(check-sat)
