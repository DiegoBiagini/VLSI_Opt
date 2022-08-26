; benchmark generated from python API
(set-info :status unknown)
(declare-fun makespan () Int)
(declare-fun y_0 () Int)
(declare-fun x_0 () Int)
(declare-fun ud_1_3 () Bool)
(declare-fun y_1 () Int)
(declare-fun x_1 () Int)
(declare-fun lr_2_1 () Bool)
(declare-fun y_2 () Int)
(declare-fun x_2 () Int)
(declare-fun y_3 () Int)
(declare-fun x_3 () Int)
(declare-fun ud_4_3 () Bool)
(declare-fun y_4 () Int)
(declare-fun x_4 () Int)
(declare-fun y_5 () Int)
(declare-fun x_5 () Int)
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
 (let ((?x1138 (+ y_0 6)))
 (<= ?x1138 makespan)))
(assert
 (let ((?x7509 (+ x_0 4)))
 (<= ?x7509 10)))
(assert
 (>= x_0 0))
(assert
 (<= y_0 9))
(assert
 (>= y_0 0))
(assert
 (<= x_0 3))
(assert
 (= ud_1_3 false))
(assert
 (let ((?x1591 (+ y_1 4)))
 (<= ?x1591 makespan)))
(assert
 (let ((?x11663 (+ x_1 4)))
 (<= ?x11663 10)))
(assert
 (>= x_1 0))
(assert
 (<= y_1 11))
(assert
 (>= y_1 0))
(assert
 (= lr_2_1 false))
(assert
 (let ((?x6348 (+ y_2 7)))
 (<= ?x6348 makespan)))
(assert
 (let ((?x11547 (+ x_2 3)))
 (<= ?x11547 10)))
(assert
 (>= x_2 0))
(assert
 (<= y_2 8))
(assert
 (>= y_2 0))
(assert
 (<= y_2 4))
(assert
 (let ((?x11461 (+ y_3 6)))
 (<= ?x11461 makespan)))
(assert
 (let ((?x11430 (+ x_3 3)))
 (<= ?x11430 10)))
(assert
 (>= x_3 0))
(assert
 (<= y_3 9))
(assert
 (>= y_3 0))
(assert
 (= ud_4_3 false))
(assert
 (let ((?x6074 (+ y_4 4)))
 (<= ?x6074 makespan)))
(assert
 (let ((?x1550 (+ x_4 3)))
 (<= ?x1550 10)))
(assert
 (>= x_4 0))
(assert
 (<= y_4 11))
(assert
 (>= y_4 0))
(assert
 (let ((?x969 (+ y_5 3)))
 (<= ?x969 makespan)))
(assert
 (let ((?x11237 (+ x_5 3)))
 (<= ?x11237 10)))
(assert
 (>= x_5 0))
(assert
 (<= y_5 12))
(assert
 (>= y_5 0))
(assert
 (= (<= (+ x_0 4) x_1) lr_1_2))
(assert
 (= (<= (+ y_0 6) y_1) ud_1_2))
(assert
 (= (<= (+ x_1 4) x_0) lr_2_1))
(assert
 (= (<= (+ y_1 4) y_0) ud_2_1))
(assert
 (or lr_1_2 lr_2_1 ud_1_2 ud_2_1))
(assert
 (let (($x11020 (< makespan 10)))
 (=> $x11020 (= ud_1_2 false))))
(assert
 (let (($x11020 (< makespan 10)))
 (=> $x11020 (= ud_2_1 false))))
(assert
 (= (<= (+ x_0 4) x_2) lr_1_3))
(assert
 (= (<= (+ y_0 6) y_2) ud_1_3))
(assert
 (= (<= (+ x_2 3) x_0) lr_3_1))
(assert
 (= (<= (+ y_2 7) y_0) ud_3_1))
(assert
 (or lr_1_3 lr_3_1 ud_1_3 ud_3_1))
(assert
 (let (($x1500 (= ud_1_3 false)))
 (let (($x10809 (< makespan 13)))
 (=> $x10809 $x1500))))
(assert
 (let (($x10809 (< makespan 13)))
 (=> $x10809 (= ud_3_1 false))))
(assert
 (= (<= (+ x_0 4) x_3) lr_1_4))
(assert
 (= (<= (+ y_0 6) y_3) ud_1_4))
(assert
 (= (<= (+ x_3 3) x_0) lr_4_1))
(assert
 (= (<= (+ y_3 6) y_0) ud_4_1))
(assert
 (or lr_1_4 lr_4_1 ud_1_4 ud_4_1))
(assert
 (let (($x10597 (< makespan 12)))
 (=> $x10597 (= ud_1_4 false))))
(assert
 (let (($x10597 (< makespan 12)))
 (=> $x10597 (= ud_4_1 false))))
(assert
 (= (<= (+ x_0 4) x_4) lr_1_5))
(assert
 (= (<= (+ y_0 6) y_4) ud_1_5))
(assert
 (= (<= (+ x_4 3) x_0) lr_5_1))
(assert
 (= (<= (+ y_4 4) y_0) ud_5_1))
(assert
 (or lr_1_5 lr_5_1 ud_1_5 ud_5_1))
(assert
 (let (($x11020 (< makespan 10)))
 (=> $x11020 (= ud_1_5 false))))
(assert
 (let (($x11020 (< makespan 10)))
 (=> $x11020 (= ud_5_1 false))))
(assert
 (= (<= (+ x_0 4) x_5) lr_1_6))
(assert
 (= (<= (+ y_0 6) y_5) ud_1_6))
(assert
 (= (<= (+ x_5 3) x_0) lr_6_1))
(assert
 (= (<= (+ y_5 3) y_0) ud_6_1))
(assert
 (or lr_1_6 lr_6_1 ud_1_6 ud_6_1))
(assert
 (let (($x10200 (< makespan 9)))
 (=> $x10200 (= ud_1_6 false))))
(assert
 (let (($x10200 (< makespan 9)))
 (=> $x10200 (= ud_6_1 false))))
(assert
 (= (<= (+ x_1 4) x_2) lr_2_3))
(assert
 (= (<= (+ y_1 4) y_2) ud_2_3))
(assert
 (= (<= (+ x_2 3) x_1) lr_3_2))
(assert
 (= (<= (+ y_2 7) y_1) ud_3_2))
(assert
 (or lr_2_3 lr_3_2 ud_2_3 ud_3_2))
(assert
 (let (($x9988 (< makespan 11)))
 (=> $x9988 (= ud_2_3 false))))
(assert
 (let (($x9988 (< makespan 11)))
 (=> $x9988 (= ud_3_2 false))))
(assert
 (= (<= (+ x_1 4) x_3) lr_2_4))
(assert
 (= (<= (+ y_1 4) y_3) ud_2_4))
(assert
 (= (<= (+ x_3 3) x_1) lr_4_2))
(assert
 (= (<= (+ y_3 6) y_1) ud_4_2))
(assert
 (or lr_2_4 lr_4_2 ud_2_4 ud_4_2))
(assert
 (let (($x11020 (< makespan 10)))
 (=> $x11020 (= ud_2_4 false))))
(assert
 (let (($x11020 (< makespan 10)))
 (=> $x11020 (= ud_4_2 false))))
(assert
 (= (<= (+ x_1 4) x_4) lr_2_5))
(assert
 (= (<= (+ y_1 4) y_4) ud_2_5))
(assert
 (= (<= (+ x_4 3) x_1) lr_5_2))
(assert
 (= (<= (+ y_4 4) y_1) ud_5_2))
(assert
 (or lr_2_5 lr_5_2 ud_2_5 ud_5_2))
(assert
 (let (($x2697 (< makespan 8)))
 (=> $x2697 (= ud_2_5 false))))
(assert
 (let (($x2697 (< makespan 8)))
 (=> $x2697 (= ud_5_2 false))))
(assert
 (= (<= (+ x_1 4) x_5) lr_2_6))
(assert
 (= (<= (+ y_1 4) y_5) ud_2_6))
(assert
 (= (<= (+ x_5 3) x_1) lr_6_2))
(assert
 (= (<= (+ y_5 3) y_1) ud_6_2))
(assert
 (or lr_2_6 lr_6_2 ud_2_6 ud_6_2))
(assert
 (let (($x9453 (< makespan 7)))
 (=> $x9453 (= ud_2_6 false))))
(assert
 (let (($x9453 (< makespan 7)))
 (=> $x9453 (= ud_6_2 false))))
(assert
 (= (<= (+ x_2 3) x_3) lr_3_4))
(assert
 (= (<= (+ y_2 7) y_3) ud_3_4))
(assert
 (= (<= (+ x_3 3) x_2) lr_4_3))
(assert
 (= (<= (+ y_3 6) y_2) ud_4_3))
(assert
 (or lr_3_4 lr_4_3 ud_3_4 ud_4_3))
(assert
 (let (($x10809 (< makespan 13)))
 (=> $x10809 (= ud_3_4 false))))
(assert
 (let (($x2765 (= ud_4_3 false)))
 (let (($x10809 (< makespan 13)))
 (=> $x10809 $x2765))))
(assert
 (= (<= (+ x_2 3) x_4) lr_3_5))
(assert
 (= (<= (+ y_2 7) y_4) ud_3_5))
(assert
 (= (<= (+ x_4 3) x_2) lr_5_3))
(assert
 (= (<= (+ y_4 4) y_2) ud_5_3))
(assert
 (or lr_3_5 lr_5_3 ud_3_5 ud_5_3))
(assert
 (let (($x9988 (< makespan 11)))
 (=> $x9988 (= ud_3_5 false))))
(assert
 (let (($x9988 (< makespan 11)))
 (=> $x9988 (= ud_5_3 false))))
(assert
 (= (<= (+ x_2 3) x_5) lr_3_6))
(assert
 (= (<= (+ y_2 7) y_5) ud_3_6))
(assert
 (= (<= (+ x_5 3) x_2) lr_6_3))
(assert
 (= (<= (+ y_5 3) y_2) ud_6_3))
(assert
 (or lr_3_6 lr_6_3 ud_3_6 ud_6_3))
(assert
 (let (($x11020 (< makespan 10)))
 (=> $x11020 (= ud_3_6 false))))
(assert
 (let (($x11020 (< makespan 10)))
 (=> $x11020 (= ud_6_3 false))))
(assert
 (= (<= (+ x_3 3) x_4) lr_4_5))
(assert
 (= (<= (+ y_3 6) y_4) ud_4_5))
(assert
 (= (<= (+ x_4 3) x_3) lr_5_4))
(assert
 (= (<= (+ y_4 4) y_3) ud_5_4))
(assert
 (or lr_4_5 lr_5_4 ud_4_5 ud_5_4))
(assert
 (let (($x11020 (< makespan 10)))
 (=> $x11020 (= ud_4_5 false))))
(assert
 (let (($x11020 (< makespan 10)))
 (=> $x11020 (= ud_5_4 false))))
(assert
 (= (<= (+ x_3 3) x_5) lr_4_6))
(assert
 (= (<= (+ y_3 6) y_5) ud_4_6))
(assert
 (= (<= (+ x_5 3) x_3) lr_6_4))
(assert
 (= (<= (+ y_5 3) y_3) ud_6_4))
(assert
 (or lr_4_6 lr_6_4 ud_4_6 ud_6_4))
(assert
 (let (($x10200 (< makespan 9)))
 (=> $x10200 (= ud_4_6 false))))
(assert
 (let (($x10200 (< makespan 9)))
 (=> $x10200 (= ud_6_4 false))))
(assert
 (= (<= (+ x_4 3) x_5) lr_5_6))
(assert
 (= (<= (+ y_4 4) y_5) ud_5_6))
(assert
 (= (<= (+ x_5 3) x_4) lr_6_5))
(assert
 (= (<= (+ y_5 3) y_4) ud_6_5))
(assert
 (or lr_5_6 lr_6_5 ud_5_6 ud_6_5))
(assert
 (let (($x9453 (< makespan 7)))
 (=> $x9453 (= ud_5_6 false))))
(assert
 (let (($x9453 (< makespan 7)))
 (=> $x9453 (= ud_6_5 false))))
(check-sat)
