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
(declare-fun ud_3_1 () Bool)
(declare-fun y_3 () Int)
(declare-fun x_3 () Int)
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
 (let ((?x61 (+ y_0 5)))
 (<= ?x61 makespan)))
(assert
 (let ((?x63 (+ x_0 5)))
 (<= ?x63 8)))
(assert
 (>= x_0 0))
(assert
 (<= y_0 8))
(assert
 (>= y_0 0))
(assert
 (<= x_0 1))
(assert
 (<= y_0 4))
(assert
 (let ((?x80 (+ y_1 3)))
 (<= ?x80 makespan)))
(assert
 (let ((?x82 (+ x_1 5)))
 (<= ?x82 8)))
(assert
 (>= x_1 0))
(assert
 (<= y_1 10))
(assert
 (>= y_1 0))
(assert
 (= lr_2_1 false))
(assert
 (let ((?x94 (+ y_2 5)))
 (<= ?x94 makespan)))
(assert
 (let ((?x96 (+ x_2 3)))
 (<= ?x96 8)))
(assert
 (>= x_2 0))
(assert
 (<= y_2 8))
(assert
 (>= y_2 0))
(assert
 (= lr_3_1 false))
(assert
 (= ud_3_1 false))
(assert
 (let ((?x108 (+ y_3 3)))
 (<= ?x108 makespan)))
(assert
 (let ((?x110 (+ x_3 3)))
 (<= ?x110 8)))
(assert
 (>= x_3 0))
(assert
 (<= y_3 10))
(assert
 (>= y_3 0))
(assert
 (= lr_4_1 false))
(assert
 (= (<= (+ x_0 5) x_1) lr_1_2))
(assert
 (= (<= (+ y_0 5) y_1) ud_1_2))
(assert
 (= (<= (+ x_1 5) x_0) lr_2_1))
(assert
 (= (<= (+ y_1 3) y_0) ud_2_1))
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
 (= (<= (+ x_0 5) x_2) lr_1_3))
(assert
 (= (<= (+ y_0 5) y_2) ud_1_3))
(assert
 (= (<= (+ x_2 3) x_0) lr_3_1))
(assert
 (= (<= (+ y_2 5) y_0) ud_3_1))
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
 (= (<= (+ x_0 5) x_3) lr_1_4))
(assert
 (= (<= (+ y_0 5) y_3) ud_1_4))
(assert
 (= (<= (+ x_3 3) x_0) lr_4_1))
(assert
 (= (<= (+ y_3 3) y_0) ud_4_1))
(assert
 (or lr_1_4 lr_4_1 ud_1_4 ud_4_1))
(assert
 (let (($x147 (< makespan 8)))
 (=> $x147 (= ud_1_4 false))))
(assert
 (let (($x147 (< makespan 8)))
 (=> $x147 (= ud_4_1 false))))
(assert
 (= (<= (+ x_1 5) x_2) lr_2_3))
(assert
 (= (<= (+ y_1 3) y_2) ud_2_3))
(assert
 (= (<= (+ x_2 3) x_1) lr_3_2))
(assert
 (= (<= (+ y_2 5) y_1) ud_3_2))
(assert
 (or lr_2_3 lr_3_2 ud_2_3 ud_3_2))
(assert
 (let (($x147 (< makespan 8)))
 (=> $x147 (= ud_2_3 false))))
(assert
 (let (($x147 (< makespan 8)))
 (=> $x147 (= ud_3_2 false))))
(assert
 (= (<= (+ x_1 5) x_3) lr_2_4))
(assert
 (= (<= (+ y_1 3) y_3) ud_2_4))
(assert
 (= (<= (+ x_3 3) x_1) lr_4_2))
(assert
 (= (<= (+ y_3 3) y_1) ud_4_2))
(assert
 (or lr_2_4 lr_4_2 ud_2_4 ud_4_2))
(assert
 (let (($x271 (< makespan 6)))
 (=> $x271 (= ud_2_4 false))))
(assert
 (let (($x271 (< makespan 6)))
 (=> $x271 (= ud_4_2 false))))
(assert
 (= (<= (+ x_2 3) x_3) lr_3_4))
(assert
 (= (<= (+ y_2 5) y_3) ud_3_4))
(assert
 (= (<= (+ x_3 3) x_2) lr_4_3))
(assert
 (= (<= (+ y_3 3) y_2) ud_4_3))
(assert
 (or lr_3_4 lr_4_3 ud_3_4 ud_4_3))
(assert
 (let (($x147 (< makespan 8)))
 (=> $x147 (= ud_3_4 false))))
(assert
 (let (($x147 (< makespan 8)))
 (=> $x147 (= ud_4_3 false))))
(check-sat)
