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
(declare-fun 3_y () Int)
(declare-fun 3_x () Int)
(declare-fun lr_4_1 () Bool)
(declare-fun 4_y () Int)
(declare-fun 4_x () Int)
(declare-fun lr_5_1 () Bool)
(declare-fun 5_y () Int)
(declare-fun 5_x () Int)
(declare-fun lr_6_1 () Bool)
(declare-fun 6_y () Int)
(declare-fun 6_x () Int)
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
 (let ((?x11319 (+ 0_y 4)))
 (<= ?x11319 makespan)))
(assert
 (let ((?x9386 (+ 0_x 8)))
 (<= ?x9386 11)))
(assert
 (>= 0_x 0))
(assert
 (<= 0_y 13))
(assert
 (>= 0_y 0))
(assert
 (<= 0_x 1))
(assert
 (let ((?x7140 (+ 1_y 4)))
 (<= ?x7140 makespan)))
(assert
 (let ((?x9147 (+ 1_x 5)))
 (<= ?x9147 11)))
(assert
 (>= 1_x 0))
(assert
 (<= 1_y 13))
(assert
 (>= 1_y 0))
(assert
 (= lr_2_1 false))
(assert
 (let ((?x1334 (+ 2_y 3)))
 (<= ?x1334 makespan)))
(assert
 (let ((?x11862 (+ 2_x 5)))
 (<= ?x11862 11)))
(assert
 (>= 2_x 0))
(assert
 (<= 2_y 14))
(assert
 (>= 2_y 0))
(assert
 (= lr_3_1 false))
(assert
 (let ((?x12432 (+ 3_y 6)))
 (<= ?x12432 makespan)))
(assert
 (let ((?x10244 (+ 3_x 3)))
 (<= ?x10244 11)))
(assert
 (>= 3_x 0))
(assert
 (<= 3_y 11))
(assert
 (>= 3_y 0))
(assert
 (= lr_4_1 false))
(assert
 (<= 3_y 5))
(assert
 (let ((?x7520 (+ 4_y 5)))
 (<= ?x7520 makespan)))
(assert
 (let ((?x12576 (+ 4_x 3)))
 (<= ?x12576 11)))
(assert
 (>= 4_x 0))
(assert
 (<= 4_y 12))
(assert
 (>= 4_y 0))
(assert
 (= lr_5_1 false))
(assert
 (let ((?x9014 (+ 5_y 4)))
 (<= ?x9014 makespan)))
(assert
 (let ((?x2873 (+ 5_x 3)))
 (<= ?x2873 11)))
(assert
 (>= 5_x 0))
(assert
 (<= 5_y 13))
(assert
 (>= 5_y 0))
(assert
 (= lr_6_1 false))
(assert
 (let ((?x1803 (+ 6_y 3)))
 (<= ?x1803 makespan)))
(assert
 (let ((?x3552 (+ 6_x 3)))
 (<= ?x3552 11)))
(assert
 (>= 6_x 0))
(assert
 (<= 6_y 14))
(assert
 (>= 6_y 0))
(assert
 (= lr_7_1 false))
(assert
 (= (<= (+ 0_x 8) 1_x) lr_1_2))
(assert
 (= (<= (+ 0_y 4) 1_y) ud_1_2))
(assert
 (= (<= (+ 1_x 5) 0_x) lr_2_1))
(assert
 (= (<= (+ 1_y 4) 0_y) ud_2_1))
(assert
 (or lr_1_2 lr_2_1 ud_1_2 ud_2_1))
(assert
 (= lr_1_2 false))
(assert
 (= lr_2_1 false))
(assert
 (let (($x8380 (< makespan 8)))
 (=> $x8380 (= ud_1_2 false))))
(assert
 (let (($x8380 (< makespan 8)))
 (=> $x8380 (= ud_2_1 false))))
(assert
 (= (<= (+ 0_x 8) 2_x) lr_1_3))
(assert
 (= (<= (+ 0_y 4) 2_y) ud_1_3))
(assert
 (= (<= (+ 2_x 5) 0_x) lr_3_1))
(assert
 (= (<= (+ 2_y 3) 0_y) ud_3_1))
(assert
 (or lr_1_3 lr_3_1 ud_1_3 ud_3_1))
(assert
 (= lr_1_3 false))
(assert
 (= lr_3_1 false))
(assert
 (let (($x8987 (< makespan 7)))
 (=> $x8987 (= ud_1_3 false))))
(assert
 (let (($x8987 (< makespan 7)))
 (=> $x8987 (= ud_3_1 false))))
(assert
 (= (<= (+ 0_x 8) 3_x) lr_1_4))
(assert
 (= (<= (+ 0_y 4) 3_y) ud_1_4))
(assert
 (= (<= (+ 3_x 3) 0_x) lr_4_1))
(assert
 (= (<= (+ 3_y 6) 0_y) ud_4_1))
(assert
 (or lr_1_4 lr_4_1 ud_1_4 ud_4_1))
(assert
 (let (($x10721 (< makespan 10)))
 (=> $x10721 (= ud_1_4 false))))
(assert
 (let (($x10721 (< makespan 10)))
 (=> $x10721 (= ud_4_1 false))))
(assert
 (= (<= (+ 0_x 8) 4_x) lr_1_5))
(assert
 (= (<= (+ 0_y 4) 4_y) ud_1_5))
(assert
 (= (<= (+ 4_x 3) 0_x) lr_5_1))
(assert
 (= (<= (+ 4_y 5) 0_y) ud_5_1))
(assert
 (or lr_1_5 lr_5_1 ud_1_5 ud_5_1))
(assert
 (let (($x8985 (< makespan 9)))
 (=> $x8985 (= ud_1_5 false))))
(assert
 (let (($x8985 (< makespan 9)))
 (=> $x8985 (= ud_5_1 false))))
(assert
 (= (<= (+ 0_x 8) 5_x) lr_1_6))
(assert
 (= (<= (+ 0_y 4) 5_y) ud_1_6))
(assert
 (= (<= (+ 5_x 3) 0_x) lr_6_1))
(assert
 (= (<= (+ 5_y 4) 0_y) ud_6_1))
(assert
 (or lr_1_6 lr_6_1 ud_1_6 ud_6_1))
(assert
 (let (($x8380 (< makespan 8)))
 (=> $x8380 (= ud_1_6 false))))
(assert
 (let (($x8380 (< makespan 8)))
 (=> $x8380 (= ud_6_1 false))))
(assert
 (= (<= (+ 0_x 8) 6_x) lr_1_7))
(assert
 (= (<= (+ 0_y 4) 6_y) ud_1_7))
(assert
 (= (<= (+ 6_x 3) 0_x) lr_7_1))
(assert
 (= (<= (+ 6_y 3) 0_y) ud_7_1))
(assert
 (or lr_1_7 lr_7_1 ud_1_7 ud_7_1))
(assert
 (let (($x8987 (< makespan 7)))
 (=> $x8987 (= ud_1_7 false))))
(assert
 (let (($x8987 (< makespan 7)))
 (=> $x8987 (= ud_7_1 false))))
(assert
 (= (<= (+ 1_x 5) 2_x) lr_2_3))
(assert
 (= (<= (+ 1_y 4) 2_y) ud_2_3))
(assert
 (= (<= (+ 2_x 5) 1_x) lr_3_2))
(assert
 (= (<= (+ 2_y 3) 1_y) ud_3_2))
(assert
 (or lr_2_3 lr_3_2 ud_2_3 ud_3_2))
(assert
 (let (($x8987 (< makespan 7)))
 (=> $x8987 (= ud_2_3 false))))
(assert
 (let (($x8987 (< makespan 7)))
 (=> $x8987 (= ud_3_2 false))))
(assert
 (= (<= (+ 1_x 5) 3_x) lr_2_4))
(assert
 (= (<= (+ 1_y 4) 3_y) ud_2_4))
(assert
 (= (<= (+ 3_x 3) 1_x) lr_4_2))
(assert
 (= (<= (+ 3_y 6) 1_y) ud_4_2))
(assert
 (or lr_2_4 lr_4_2 ud_2_4 ud_4_2))
(assert
 (let (($x10721 (< makespan 10)))
 (=> $x10721 (= ud_2_4 false))))
(assert
 (let (($x10721 (< makespan 10)))
 (=> $x10721 (= ud_4_2 false))))
(assert
 (= (<= (+ 1_x 5) 4_x) lr_2_5))
(assert
 (= (<= (+ 1_y 4) 4_y) ud_2_5))
(assert
 (= (<= (+ 4_x 3) 1_x) lr_5_2))
(assert
 (= (<= (+ 4_y 5) 1_y) ud_5_2))
(assert
 (or lr_2_5 lr_5_2 ud_2_5 ud_5_2))
(assert
 (let (($x8985 (< makespan 9)))
 (=> $x8985 (= ud_2_5 false))))
(assert
 (let (($x8985 (< makespan 9)))
 (=> $x8985 (= ud_5_2 false))))
(assert
 (= (<= (+ 1_x 5) 5_x) lr_2_6))
(assert
 (= (<= (+ 1_y 4) 5_y) ud_2_6))
(assert
 (= (<= (+ 5_x 3) 1_x) lr_6_2))
(assert
 (= (<= (+ 5_y 4) 1_y) ud_6_2))
(assert
 (or lr_2_6 lr_6_2 ud_2_6 ud_6_2))
(assert
 (let (($x8380 (< makespan 8)))
 (=> $x8380 (= ud_2_6 false))))
(assert
 (let (($x8380 (< makespan 8)))
 (=> $x8380 (= ud_6_2 false))))
(assert
 (= (<= (+ 1_x 5) 6_x) lr_2_7))
(assert
 (= (<= (+ 1_y 4) 6_y) ud_2_7))
(assert
 (= (<= (+ 6_x 3) 1_x) lr_7_2))
(assert
 (= (<= (+ 6_y 3) 1_y) ud_7_2))
(assert
 (or lr_2_7 lr_7_2 ud_2_7 ud_7_2))
(assert
 (let (($x8987 (< makespan 7)))
 (=> $x8987 (= ud_2_7 false))))
(assert
 (let (($x8987 (< makespan 7)))
 (=> $x8987 (= ud_7_2 false))))
(assert
 (= (<= (+ 2_x 5) 3_x) lr_3_4))
(assert
 (= (<= (+ 2_y 3) 3_y) ud_3_4))
(assert
 (= (<= (+ 3_x 3) 2_x) lr_4_3))
(assert
 (= (<= (+ 3_y 6) 2_y) ud_4_3))
(assert
 (or lr_3_4 lr_4_3 ud_3_4 ud_4_3))
(assert
 (let (($x8985 (< makespan 9)))
 (=> $x8985 (= ud_3_4 false))))
(assert
 (let (($x8985 (< makespan 9)))
 (=> $x8985 (= ud_4_3 false))))
(assert
 (= (<= (+ 2_x 5) 4_x) lr_3_5))
(assert
 (= (<= (+ 2_y 3) 4_y) ud_3_5))
(assert
 (= (<= (+ 4_x 3) 2_x) lr_5_3))
(assert
 (= (<= (+ 4_y 5) 2_y) ud_5_3))
(assert
 (or lr_3_5 lr_5_3 ud_3_5 ud_5_3))
(assert
 (let (($x8380 (< makespan 8)))
 (=> $x8380 (= ud_3_5 false))))
(assert
 (let (($x8380 (< makespan 8)))
 (=> $x8380 (= ud_5_3 false))))
(assert
 (= (<= (+ 2_x 5) 5_x) lr_3_6))
(assert
 (= (<= (+ 2_y 3) 5_y) ud_3_6))
(assert
 (= (<= (+ 5_x 3) 2_x) lr_6_3))
(assert
 (= (<= (+ 5_y 4) 2_y) ud_6_3))
(assert
 (or lr_3_6 lr_6_3 ud_3_6 ud_6_3))
(assert
 (let (($x8987 (< makespan 7)))
 (=> $x8987 (= ud_3_6 false))))
(assert
 (let (($x8987 (< makespan 7)))
 (=> $x8987 (= ud_6_3 false))))
(assert
 (= (<= (+ 2_x 5) 6_x) lr_3_7))
(assert
 (= (<= (+ 2_y 3) 6_y) ud_3_7))
(assert
 (= (<= (+ 6_x 3) 2_x) lr_7_3))
(assert
 (= (<= (+ 6_y 3) 2_y) ud_7_3))
(assert
 (or lr_3_7 lr_7_3 ud_3_7 ud_7_3))
(assert
 (let (($x7382 (< makespan 6)))
 (=> $x7382 (= ud_3_7 false))))
(assert
 (let (($x7382 (< makespan 6)))
 (=> $x7382 (= ud_7_3 false))))
(assert
 (= (<= (+ 3_x 3) 4_x) lr_4_5))
(assert
 (= (<= (+ 3_y 6) 4_y) ud_4_5))
(assert
 (= (<= (+ 4_x 3) 3_x) lr_5_4))
(assert
 (= (<= (+ 4_y 5) 3_y) ud_5_4))
(assert
 (or lr_4_5 lr_5_4 ud_4_5 ud_5_4))
(assert
 (let (($x4741 (< makespan 11)))
 (=> $x4741 (= ud_4_5 false))))
(assert
 (let (($x4741 (< makespan 11)))
 (=> $x4741 (= ud_5_4 false))))
(assert
 (= (<= (+ 3_x 3) 5_x) lr_4_6))
(assert
 (= (<= (+ 3_y 6) 5_y) ud_4_6))
(assert
 (= (<= (+ 5_x 3) 3_x) lr_6_4))
(assert
 (= (<= (+ 5_y 4) 3_y) ud_6_4))
(assert
 (or lr_4_6 lr_6_4 ud_4_6 ud_6_4))
(assert
 (let (($x10721 (< makespan 10)))
 (=> $x10721 (= ud_4_6 false))))
(assert
 (let (($x10721 (< makespan 10)))
 (=> $x10721 (= ud_6_4 false))))
(assert
 (= (<= (+ 3_x 3) 6_x) lr_4_7))
(assert
 (= (<= (+ 3_y 6) 6_y) ud_4_7))
(assert
 (= (<= (+ 6_x 3) 3_x) lr_7_4))
(assert
 (= (<= (+ 6_y 3) 3_y) ud_7_4))
(assert
 (or lr_4_7 lr_7_4 ud_4_7 ud_7_4))
(assert
 (let (($x8985 (< makespan 9)))
 (=> $x8985 (= ud_4_7 false))))
(assert
 (let (($x8985 (< makespan 9)))
 (=> $x8985 (= ud_7_4 false))))
(assert
 (= (<= (+ 4_x 3) 5_x) lr_5_6))
(assert
 (= (<= (+ 4_y 5) 5_y) ud_5_6))
(assert
 (= (<= (+ 5_x 3) 4_x) lr_6_5))
(assert
 (= (<= (+ 5_y 4) 4_y) ud_6_5))
(assert
 (or lr_5_6 lr_6_5 ud_5_6 ud_6_5))
(assert
 (let (($x8985 (< makespan 9)))
 (=> $x8985 (= ud_5_6 false))))
(assert
 (let (($x8985 (< makespan 9)))
 (=> $x8985 (= ud_6_5 false))))
(assert
 (= (<= (+ 4_x 3) 6_x) lr_5_7))
(assert
 (= (<= (+ 4_y 5) 6_y) ud_5_7))
(assert
 (= (<= (+ 6_x 3) 4_x) lr_7_5))
(assert
 (= (<= (+ 6_y 3) 4_y) ud_7_5))
(assert
 (or lr_5_7 lr_7_5 ud_5_7 ud_7_5))
(assert
 (let (($x8380 (< makespan 8)))
 (=> $x8380 (= ud_5_7 false))))
(assert
 (let (($x8380 (< makespan 8)))
 (=> $x8380 (= ud_7_5 false))))
(assert
 (= (<= (+ 5_x 3) 6_x) lr_6_7))
(assert
 (= (<= (+ 5_y 4) 6_y) ud_6_7))
(assert
 (= (<= (+ 6_x 3) 5_x) lr_7_6))
(assert
 (= (<= (+ 6_y 3) 5_y) ud_7_6))
(assert
 (or lr_6_7 lr_7_6 ud_6_7 ud_7_6))
(assert
 (let (($x8987 (< makespan 7)))
 (=> $x8987 (= ud_6_7 false))))
(assert
 (let (($x8987 (< makespan 7)))
 (=> $x8987 (= ud_7_6 false))))
(check-sat)
