; benchmark generated from python API
(set-info :status unknown)
(declare-fun makespan () Int)
(declare-fun y_0 () Int)
(declare-fun x_0 () Int)
(declare-fun y_1 () Int)
(declare-fun x_1 () Int)
(declare-fun lr_2_1 () Bool)
(declare-fun y_2 () Int)
(declare-fun x_2 () Int)
(declare-fun lr_3_1 () Bool)
(declare-fun y_3 () Int)
(declare-fun x_3 () Int)
(declare-fun lr_4_1 () Bool)
(declare-fun y_4 () Int)
(declare-fun x_4 () Int)
(declare-fun lr_5_1 () Bool)
(declare-fun y_5 () Int)
(declare-fun x_5 () Int)
(declare-fun lr_6_1 () Bool)
(declare-fun y_6 () Int)
(declare-fun x_6 () Int)
(declare-fun lr_7_1 () Bool)
(declare-fun lr_1_2 () Bool)
(declare-fun ud_1_2 () Bool)
(declare-fun ud_2_1 () Bool)
(declare-fun lr_1_3 () Bool)
(declare-fun ud_1_3 () Bool)
(declare-fun ud_3_1 () Bool)
(declare-fun lr_1_4 () Bool)
(declare-fun ud_1_4 () Bool)
(declare-fun ud_4_1 () Bool)
(declare-fun lr_1_5 () Bool)
(declare-fun ud_1_5 () Bool)
(declare-fun ud_5_1 () Bool)
(declare-fun lr_1_6 () Bool)
(declare-fun ud_1_6 () Bool)
(declare-fun ud_6_1 () Bool)
(declare-fun lr_1_7 () Bool)
(declare-fun ud_1_7 () Bool)
(declare-fun ud_7_1 () Bool)
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
(declare-fun lr_2_7 () Bool)
(declare-fun ud_2_7 () Bool)
(declare-fun lr_7_2 () Bool)
(declare-fun ud_7_2 () Bool)
(declare-fun lr_3_4 () Bool)
(declare-fun ud_3_4 () Bool)
(declare-fun lr_4_3 () Bool)
(declare-fun ud_4_3 () Bool)
(declare-fun lr_3_5 () Bool)
(declare-fun ud_3_5 () Bool)
(declare-fun lr_5_3 () Bool)
(declare-fun ud_5_3 () Bool)
(declare-fun lr_3_6 () Bool)
(declare-fun ud_3_6 () Bool)
(declare-fun lr_6_3 () Bool)
(declare-fun ud_6_3 () Bool)
(declare-fun lr_3_7 () Bool)
(declare-fun ud_3_7 () Bool)
(declare-fun lr_7_3 () Bool)
(declare-fun ud_7_3 () Bool)
(declare-fun lr_4_5 () Bool)
(declare-fun ud_4_5 () Bool)
(declare-fun lr_5_4 () Bool)
(declare-fun ud_5_4 () Bool)
(declare-fun lr_4_6 () Bool)
(declare-fun ud_4_6 () Bool)
(declare-fun lr_6_4 () Bool)
(declare-fun ud_6_4 () Bool)
(declare-fun lr_4_7 () Bool)
(declare-fun ud_4_7 () Bool)
(declare-fun lr_7_4 () Bool)
(declare-fun ud_7_4 () Bool)
(declare-fun lr_5_6 () Bool)
(declare-fun ud_5_6 () Bool)
(declare-fun lr_6_5 () Bool)
(declare-fun ud_6_5 () Bool)
(declare-fun lr_5_7 () Bool)
(declare-fun ud_5_7 () Bool)
(declare-fun lr_7_5 () Bool)
(declare-fun ud_7_5 () Bool)
(declare-fun lr_6_7 () Bool)
(declare-fun ud_6_7 () Bool)
(declare-fun lr_7_6 () Bool)
(declare-fun ud_7_6 () Bool)
(assert
 (>= makespan 11))
(assert
 (<= makespan 17))
(assert
 (let ((?x2635 (+ y_0 4)))
 (<= ?x2635 makespan)))
(assert
 (let ((?x5038 (+ x_0 8)))
 (<= ?x5038 11)))
(assert
 (>= x_0 0))
(assert
 (<= y_0 13))
(assert
 (>= y_0 0))
(assert
 (<= x_0 1))
(assert
 (let ((?x9706 (+ y_1 4)))
 (<= ?x9706 makespan)))
(assert
 (let ((?x6067 (+ x_1 5)))
 (<= ?x6067 11)))
(assert
 (>= x_1 0))
(assert
 (<= y_1 13))
(assert
 (>= y_1 0))
(assert
 (= lr_2_1 false))
(assert
 (let ((?x11587 (+ y_2 3)))
 (<= ?x11587 makespan)))
(assert
 (let ((?x11889 (+ x_2 5)))
 (<= ?x11889 11)))
(assert
 (>= x_2 0))
(assert
 (<= y_2 14))
(assert
 (>= y_2 0))
(assert
 (= lr_3_1 false))
(assert
 (let ((?x13314 (+ y_3 6)))
 (<= ?x13314 makespan)))
(assert
 (let ((?x369 (+ x_3 3)))
 (<= ?x369 11)))
(assert
 (>= x_3 0))
(assert
 (<= y_3 11))
(assert
 (>= y_3 0))
(assert
 (= lr_4_1 false))
(assert
 (<= y_3 5))
(assert
 (let ((?x8325 (+ y_4 5)))
 (<= ?x8325 makespan)))
(assert
 (let ((?x12247 (+ x_4 3)))
 (<= ?x12247 11)))
(assert
 (>= x_4 0))
(assert
 (<= y_4 12))
(assert
 (>= y_4 0))
(assert
 (= lr_5_1 false))
(assert
 (let ((?x11611 (+ y_5 4)))
 (<= ?x11611 makespan)))
(assert
 (let ((?x2400 (+ x_5 3)))
 (<= ?x2400 11)))
(assert
 (>= x_5 0))
(assert
 (<= y_5 13))
(assert
 (>= y_5 0))
(assert
 (= lr_6_1 false))
(assert
 (let ((?x3759 (+ y_6 3)))
 (<= ?x3759 makespan)))
(assert
 (let ((?x7683 (+ x_6 3)))
 (<= ?x7683 11)))
(assert
 (>= x_6 0))
(assert
 (<= y_6 14))
(assert
 (>= y_6 0))
(assert
 (= lr_7_1 false))
(assert
 (= (<= (+ x_0 8) x_1) lr_1_2))
(assert
 (= (<= (+ y_0 4) y_1) ud_1_2))
(assert
 (= (<= (+ x_1 5) x_0) lr_2_1))
(assert
 (= (<= (+ y_1 4) y_0) ud_2_1))
(assert
 (or lr_1_2 lr_2_1 ud_1_2 ud_2_1))
(assert
 (= lr_1_2 false))
(assert
 (= lr_2_1 false))
(assert
 (let (($x2164 (< makespan 8)))
 (=> $x2164 (= ud_1_2 false))))
(assert
 (let (($x2164 (< makespan 8)))
 (=> $x2164 (= ud_2_1 false))))
(assert
 (= (<= (+ x_0 8) x_2) lr_1_3))
(assert
 (= (<= (+ y_0 4) y_2) ud_1_3))
(assert
 (= (<= (+ x_2 5) x_0) lr_3_1))
(assert
 (= (<= (+ y_2 3) y_0) ud_3_1))
(assert
 (or lr_1_3 lr_3_1 ud_1_3 ud_3_1))
(assert
 (= lr_1_3 false))
(assert
 (= lr_3_1 false))
(assert
 (let (($x1221 (< makespan 7)))
 (=> $x1221 (= ud_1_3 false))))
(assert
 (let (($x1221 (< makespan 7)))
 (=> $x1221 (= ud_3_1 false))))
(assert
 (= (<= (+ x_0 8) x_3) lr_1_4))
(assert
 (= (<= (+ y_0 4) y_3) ud_1_4))
(assert
 (= (<= (+ x_3 3) x_0) lr_4_1))
(assert
 (= (<= (+ y_3 6) y_0) ud_4_1))
(assert
 (or lr_1_4 lr_4_1 ud_1_4 ud_4_1))
(assert
 (let (($x13478 (< makespan 10)))
 (=> $x13478 (= ud_1_4 false))))
(assert
 (let (($x13478 (< makespan 10)))
 (=> $x13478 (= ud_4_1 false))))
(assert
 (= (<= (+ x_0 8) x_4) lr_1_5))
(assert
 (= (<= (+ y_0 4) y_4) ud_1_5))
(assert
 (= (<= (+ x_4 3) x_0) lr_5_1))
(assert
 (= (<= (+ y_4 5) y_0) ud_5_1))
(assert
 (or lr_1_5 lr_5_1 ud_1_5 ud_5_1))
(assert
 (let (($x4832 (< makespan 9)))
 (=> $x4832 (= ud_1_5 false))))
(assert
 (let (($x4832 (< makespan 9)))
 (=> $x4832 (= ud_5_1 false))))
(assert
 (= (<= (+ x_0 8) x_5) lr_1_6))
(assert
 (= (<= (+ y_0 4) y_5) ud_1_6))
(assert
 (= (<= (+ x_5 3) x_0) lr_6_1))
(assert
 (= (<= (+ y_5 4) y_0) ud_6_1))
(assert
 (or lr_1_6 lr_6_1 ud_1_6 ud_6_1))
(assert
 (let (($x2164 (< makespan 8)))
 (=> $x2164 (= ud_1_6 false))))
(assert
 (let (($x2164 (< makespan 8)))
 (=> $x2164 (= ud_6_1 false))))
(assert
 (= (<= (+ x_0 8) x_6) lr_1_7))
(assert
 (= (<= (+ y_0 4) y_6) ud_1_7))
(assert
 (= (<= (+ x_6 3) x_0) lr_7_1))
(assert
 (= (<= (+ y_6 3) y_0) ud_7_1))
(assert
 (or lr_1_7 lr_7_1 ud_1_7 ud_7_1))
(assert
 (let (($x1221 (< makespan 7)))
 (=> $x1221 (= ud_1_7 false))))
(assert
 (let (($x1221 (< makespan 7)))
 (=> $x1221 (= ud_7_1 false))))
(assert
 (= (<= (+ x_1 5) x_2) lr_2_3))
(assert
 (= (<= (+ y_1 4) y_2) ud_2_3))
(assert
 (= (<= (+ x_2 5) x_1) lr_3_2))
(assert
 (= (<= (+ y_2 3) y_1) ud_3_2))
(assert
 (or lr_2_3 lr_3_2 ud_2_3 ud_3_2))
(assert
 (let (($x1221 (< makespan 7)))
 (=> $x1221 (= ud_2_3 false))))
(assert
 (let (($x1221 (< makespan 7)))
 (=> $x1221 (= ud_3_2 false))))
(assert
 (= (<= (+ x_1 5) x_3) lr_2_4))
(assert
 (= (<= (+ y_1 4) y_3) ud_2_4))
(assert
 (= (<= (+ x_3 3) x_1) lr_4_2))
(assert
 (= (<= (+ y_3 6) y_1) ud_4_2))
(assert
 (or lr_2_4 lr_4_2 ud_2_4 ud_4_2))
(assert
 (let (($x13478 (< makespan 10)))
 (=> $x13478 (= ud_2_4 false))))
(assert
 (let (($x13478 (< makespan 10)))
 (=> $x13478 (= ud_4_2 false))))
(assert
 (= (<= (+ x_1 5) x_4) lr_2_5))
(assert
 (= (<= (+ y_1 4) y_4) ud_2_5))
(assert
 (= (<= (+ x_4 3) x_1) lr_5_2))
(assert
 (= (<= (+ y_4 5) y_1) ud_5_2))
(assert
 (or lr_2_5 lr_5_2 ud_2_5 ud_5_2))
(assert
 (let (($x4832 (< makespan 9)))
 (=> $x4832 (= ud_2_5 false))))
(assert
 (let (($x4832 (< makespan 9)))
 (=> $x4832 (= ud_5_2 false))))
(assert
 (= (<= (+ x_1 5) x_5) lr_2_6))
(assert
 (= (<= (+ y_1 4) y_5) ud_2_6))
(assert
 (= (<= (+ x_5 3) x_1) lr_6_2))
(assert
 (= (<= (+ y_5 4) y_1) ud_6_2))
(assert
 (or lr_2_6 lr_6_2 ud_2_6 ud_6_2))
(assert
 (let (($x2164 (< makespan 8)))
 (=> $x2164 (= ud_2_6 false))))
(assert
 (let (($x2164 (< makespan 8)))
 (=> $x2164 (= ud_6_2 false))))
(assert
 (= (<= (+ x_1 5) x_6) lr_2_7))
(assert
 (= (<= (+ y_1 4) y_6) ud_2_7))
(assert
 (= (<= (+ x_6 3) x_1) lr_7_2))
(assert
 (= (<= (+ y_6 3) y_1) ud_7_2))
(assert
 (or lr_2_7 lr_7_2 ud_2_7 ud_7_2))
(assert
 (let (($x1221 (< makespan 7)))
 (=> $x1221 (= ud_2_7 false))))
(assert
 (let (($x1221 (< makespan 7)))
 (=> $x1221 (= ud_7_2 false))))
(assert
 (= (<= (+ x_2 5) x_3) lr_3_4))
(assert
 (= (<= (+ y_2 3) y_3) ud_3_4))
(assert
 (= (<= (+ x_3 3) x_2) lr_4_3))
(assert
 (= (<= (+ y_3 6) y_2) ud_4_3))
(assert
 (or lr_3_4 lr_4_3 ud_3_4 ud_4_3))
(assert
 (let (($x4832 (< makespan 9)))
 (=> $x4832 (= ud_3_4 false))))
(assert
 (let (($x4832 (< makespan 9)))
 (=> $x4832 (= ud_4_3 false))))
(assert
 (= (<= (+ x_2 5) x_4) lr_3_5))
(assert
 (= (<= (+ y_2 3) y_4) ud_3_5))
(assert
 (= (<= (+ x_4 3) x_2) lr_5_3))
(assert
 (= (<= (+ y_4 5) y_2) ud_5_3))
(assert
 (or lr_3_5 lr_5_3 ud_3_5 ud_5_3))
(assert
 (let (($x2164 (< makespan 8)))
 (=> $x2164 (= ud_3_5 false))))
(assert
 (let (($x2164 (< makespan 8)))
 (=> $x2164 (= ud_5_3 false))))
(assert
 (= (<= (+ x_2 5) x_5) lr_3_6))
(assert
 (= (<= (+ y_2 3) y_5) ud_3_6))
(assert
 (= (<= (+ x_5 3) x_2) lr_6_3))
(assert
 (= (<= (+ y_5 4) y_2) ud_6_3))
(assert
 (or lr_3_6 lr_6_3 ud_3_6 ud_6_3))
(assert
 (let (($x1221 (< makespan 7)))
 (=> $x1221 (= ud_3_6 false))))
(assert
 (let (($x1221 (< makespan 7)))
 (=> $x1221 (= ud_6_3 false))))
(assert
 (= (<= (+ x_2 5) x_6) lr_3_7))
(assert
 (= (<= (+ y_2 3) y_6) ud_3_7))
(assert
 (= (<= (+ x_6 3) x_2) lr_7_3))
(assert
 (= (<= (+ y_6 3) y_2) ud_7_3))
(assert
 (or lr_3_7 lr_7_3 ud_3_7 ud_7_3))
(assert
 (let (($x7876 (< makespan 6)))
 (=> $x7876 (= ud_3_7 false))))
(assert
 (let (($x7876 (< makespan 6)))
 (=> $x7876 (= ud_7_3 false))))
(assert
 (= (<= (+ x_3 3) x_4) lr_4_5))
(assert
 (= (<= (+ y_3 6) y_4) ud_4_5))
(assert
 (= (<= (+ x_4 3) x_3) lr_5_4))
(assert
 (= (<= (+ y_4 5) y_3) ud_5_4))
(assert
 (or lr_4_5 lr_5_4 ud_4_5 ud_5_4))
(assert
 (let (($x7915 (< makespan 11)))
 (=> $x7915 (= ud_4_5 false))))
(assert
 (let (($x7915 (< makespan 11)))
 (=> $x7915 (= ud_5_4 false))))
(assert
 (= (<= (+ x_3 3) x_5) lr_4_6))
(assert
 (= (<= (+ y_3 6) y_5) ud_4_6))
(assert
 (= (<= (+ x_5 3) x_3) lr_6_4))
(assert
 (= (<= (+ y_5 4) y_3) ud_6_4))
(assert
 (or lr_4_6 lr_6_4 ud_4_6 ud_6_4))
(assert
 (let (($x13478 (< makespan 10)))
 (=> $x13478 (= ud_4_6 false))))
(assert
 (let (($x13478 (< makespan 10)))
 (=> $x13478 (= ud_6_4 false))))
(assert
 (= (<= (+ x_3 3) x_6) lr_4_7))
(assert
 (= (<= (+ y_3 6) y_6) ud_4_7))
(assert
 (= (<= (+ x_6 3) x_3) lr_7_4))
(assert
 (= (<= (+ y_6 3) y_3) ud_7_4))
(assert
 (or lr_4_7 lr_7_4 ud_4_7 ud_7_4))
(assert
 (let (($x4832 (< makespan 9)))
 (=> $x4832 (= ud_4_7 false))))
(assert
 (let (($x4832 (< makespan 9)))
 (=> $x4832 (= ud_7_4 false))))
(assert
 (= (<= (+ x_4 3) x_5) lr_5_6))
(assert
 (= (<= (+ y_4 5) y_5) ud_5_6))
(assert
 (= (<= (+ x_5 3) x_4) lr_6_5))
(assert
 (= (<= (+ y_5 4) y_4) ud_6_5))
(assert
 (or lr_5_6 lr_6_5 ud_5_6 ud_6_5))
(assert
 (let (($x4832 (< makespan 9)))
 (=> $x4832 (= ud_5_6 false))))
(assert
 (let (($x4832 (< makespan 9)))
 (=> $x4832 (= ud_6_5 false))))
(assert
 (= (<= (+ x_4 3) x_6) lr_5_7))
(assert
 (= (<= (+ y_4 5) y_6) ud_5_7))
(assert
 (= (<= (+ x_6 3) x_4) lr_7_5))
(assert
 (= (<= (+ y_6 3) y_4) ud_7_5))
(assert
 (or lr_5_7 lr_7_5 ud_5_7 ud_7_5))
(assert
 (let (($x2164 (< makespan 8)))
 (=> $x2164 (= ud_5_7 false))))
(assert
 (let (($x2164 (< makespan 8)))
 (=> $x2164 (= ud_7_5 false))))
(assert
 (= (<= (+ x_5 3) x_6) lr_6_7))
(assert
 (= (<= (+ y_5 4) y_6) ud_6_7))
(assert
 (= (<= (+ x_6 3) x_5) lr_7_6))
(assert
 (= (<= (+ y_6 3) y_5) ud_7_6))
(assert
 (or lr_6_7 lr_7_6 ud_6_7 ud_7_6))
(assert
 (let (($x1221 (< makespan 7)))
 (=> $x1221 (= ud_6_7 false))))
(assert
 (let (($x1221 (< makespan 7)))
 (=> $x1221 (= ud_7_6 false))))
(check-sat)
