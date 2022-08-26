; benchmark generated from python API
(set-info :status unknown)
(declare-fun makespan () Int)
(declare-fun 0_y () Int)
(declare-fun 0_x () Int)
(declare-fun 1_y () Int)
(declare-fun 1_x () Int)
(declare-fun 2_y () Int)
(declare-fun 2_x () Int)
(declare-fun ud_3_2 () Bool)
(declare-fun 3_y () Int)
(declare-fun 3_x () Int)
(declare-fun ud_4_2 () Bool)
(declare-fun 4_y () Int)
(declare-fun 4_x () Int)
(declare-fun ud_5_2 () Bool)
(declare-fun 5_y () Int)
(declare-fun 5_x () Int)
(declare-fun ud_6_2 () Bool)
(declare-fun 6_y () Int)
(declare-fun 6_x () Int)
(declare-fun 7_y () Int)
(declare-fun 7_x () Int)
(declare-fun lr_1_2 () Bool)
(declare-fun ud_1_2 () Bool)
(declare-fun lr_2_1 () Bool)
(declare-fun ud_2_1 () Bool)
(declare-fun lr_1_3 () Bool)
(declare-fun ud_1_3 () Bool)
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
(declare-fun lr_1_7 () Bool)
(declare-fun ud_1_7 () Bool)
(declare-fun lr_7_1 () Bool)
(declare-fun ud_7_1 () Bool)
(declare-fun lr_1_8 () Bool)
(declare-fun ud_1_8 () Bool)
(declare-fun lr_8_1 () Bool)
(declare-fun ud_8_1 () Bool)
(declare-fun lr_2_3 () Bool)
(declare-fun ud_2_3 () Bool)
(declare-fun lr_3_2 () Bool)
(declare-fun lr_2_4 () Bool)
(declare-fun ud_2_4 () Bool)
(declare-fun lr_4_2 () Bool)
(declare-fun lr_2_5 () Bool)
(declare-fun ud_2_5 () Bool)
(declare-fun lr_5_2 () Bool)
(declare-fun lr_2_6 () Bool)
(declare-fun ud_2_6 () Bool)
(declare-fun lr_6_2 () Bool)
(declare-fun lr_2_7 () Bool)
(declare-fun ud_2_7 () Bool)
(declare-fun lr_7_2 () Bool)
(declare-fun ud_7_2 () Bool)
(declare-fun lr_2_8 () Bool)
(declare-fun ud_2_8 () Bool)
(declare-fun lr_8_2 () Bool)
(declare-fun ud_8_2 () Bool)
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
(declare-fun lr_3_8 () Bool)
(declare-fun ud_3_8 () Bool)
(declare-fun lr_8_3 () Bool)
(declare-fun ud_8_3 () Bool)
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
(declare-fun lr_4_8 () Bool)
(declare-fun ud_4_8 () Bool)
(declare-fun lr_8_4 () Bool)
(declare-fun ud_8_4 () Bool)
(declare-fun lr_5_6 () Bool)
(declare-fun ud_5_6 () Bool)
(declare-fun lr_6_5 () Bool)
(declare-fun ud_6_5 () Bool)
(declare-fun lr_5_7 () Bool)
(declare-fun ud_5_7 () Bool)
(declare-fun lr_7_5 () Bool)
(declare-fun ud_7_5 () Bool)
(declare-fun lr_5_8 () Bool)
(declare-fun ud_5_8 () Bool)
(declare-fun lr_8_5 () Bool)
(declare-fun ud_8_5 () Bool)
(declare-fun lr_6_7 () Bool)
(declare-fun ud_6_7 () Bool)
(declare-fun lr_7_6 () Bool)
(declare-fun ud_7_6 () Bool)
(declare-fun lr_6_8 () Bool)
(declare-fun ud_6_8 () Bool)
(declare-fun lr_8_6 () Bool)
(declare-fun ud_8_6 () Bool)
(declare-fun lr_7_8 () Bool)
(declare-fun ud_7_8 () Bool)
(declare-fun lr_8_7 () Bool)
(declare-fun ud_8_7 () Bool)
(assert
 (>= makespan 12))
(assert
 (<= makespan 18))
(assert
 (let ((?x83324 (+ 0_y 3)))
 (<= ?x83324 makespan)))
(assert
 (let ((?x7857 (+ 0_x 6)))
 (<= ?x7857 12)))
(assert
 (>= 0_x 0))
(assert
 (<= 0_y 15))
(assert
 (>= 0_y 0))
(assert
 (<= 0_x 3))
(assert
 (let ((?x83310 (+ 1_y 9)))
 (<= ?x83310 makespan)))
(assert
 (let ((?x83306 (+ 1_x 3)))
 (<= ?x83306 12)))
(assert
 (>= 1_x 0))
(assert
 (<= 1_y 9))
(assert
 (>= 1_y 0))
(assert
 (<= 1_y 4))
(assert
 (let ((?x83293 (+ 2_y 8)))
 (<= ?x83293 makespan)))
(assert
 (let ((?x8222 (+ 2_x 3)))
 (<= ?x8222 12)))
(assert
 (>= 2_x 0))
(assert
 (<= 2_y 10))
(assert
 (>= 2_y 0))
(assert
 (= ud_3_2 false))
(assert
 (let ((?x83275 (+ 3_y 7)))
 (<= ?x83275 makespan)))
(assert
 (let ((?x83270 (+ 3_x 3)))
 (<= ?x83270 12)))
(assert
 (>= 3_x 0))
(assert
 (<= 3_y 11))
(assert
 (>= 3_y 0))
(assert
 (= ud_4_2 false))
(assert
 (let ((?x7849 (+ 4_y 6)))
 (<= ?x7849 makespan)))
(assert
 (let ((?x8528 (+ 4_x 3)))
 (<= ?x8528 12)))
(assert
 (>= 4_x 0))
(assert
 (<= 4_y 12))
(assert
 (>= 4_y 0))
(assert
 (= ud_5_2 false))
(assert
 (let ((?x83239 (+ 5_y 5)))
 (<= ?x83239 makespan)))
(assert
 (let ((?x83234 (+ 5_x 3)))
 (<= ?x83234 12)))
(assert
 (>= 5_x 0))
(assert
 (<= 5_y 13))
(assert
 (>= 5_y 0))
(assert
 (= ud_6_2 false))
(assert
 (let ((?x83222 (+ 6_y 4)))
 (<= ?x83222 makespan)))
(assert
 (let ((?x83217 (+ 6_x 3)))
 (<= ?x83217 12)))
(assert
 (>= 6_x 0))
(assert
 (<= 6_y 14))
(assert
 (>= 6_y 0))
(assert
 (let ((?x83203 (+ 7_y 3)))
 (<= ?x83203 makespan)))
(assert
 (let ((?x8298 (+ 7_x 3)))
 (<= ?x8298 12)))
(assert
 (>= 7_x 0))
(assert
 (<= 7_y 15))
(assert
 (>= 7_y 0))
(assert
 (= (<= (+ 0_x 6) 1_x) lr_1_2))
(assert
 (= (<= (+ 0_y 3) 1_y) ud_1_2))
(assert
 (= (<= (+ 1_x 3) 0_x) lr_2_1))
(assert
 (= (<= (+ 1_y 9) 0_y) ud_2_1))
(assert
 (or lr_1_2 lr_2_1 ud_1_2 ud_2_1))
(assert
 (let (($x83153 (< makespan 12)))
 (=> $x83153 (= ud_1_2 false))))
(assert
 (let (($x83153 (< makespan 12)))
 (=> $x83153 (= ud_2_1 false))))
(assert
 (= (<= (+ 0_x 6) 2_x) lr_1_3))
(assert
 (= (<= (+ 0_y 3) 2_y) ud_1_3))
(assert
 (= (<= (+ 2_x 3) 0_x) lr_3_1))
(assert
 (= (<= (+ 2_y 8) 0_y) ud_3_1))
(assert
 (or lr_1_3 lr_3_1 ud_1_3 ud_3_1))
(assert
 (let (($x6256 (< makespan 11)))
 (=> $x6256 (= ud_1_3 false))))
(assert
 (let (($x6256 (< makespan 11)))
 (=> $x6256 (= ud_3_1 false))))
(assert
 (= (<= (+ 0_x 6) 3_x) lr_1_4))
(assert
 (= (<= (+ 0_y 3) 3_y) ud_1_4))
(assert
 (= (<= (+ 3_x 3) 0_x) lr_4_1))
(assert
 (= (<= (+ 3_y 7) 0_y) ud_4_1))
(assert
 (or lr_1_4 lr_4_1 ud_1_4 ud_4_1))
(assert
 (let (($x83049 (< makespan 10)))
 (=> $x83049 (= ud_1_4 false))))
(assert
 (let (($x83049 (< makespan 10)))
 (=> $x83049 (= ud_4_1 false))))
(assert
 (= (<= (+ 0_x 6) 4_x) lr_1_5))
(assert
 (= (<= (+ 0_y 3) 4_y) ud_1_5))
(assert
 (= (<= (+ 4_x 3) 0_x) lr_5_1))
(assert
 (= (<= (+ 4_y 6) 0_y) ud_5_1))
(assert
 (or lr_1_5 lr_5_1 ud_1_5 ud_5_1))
(assert
 (let (($x83000 (< makespan 9)))
 (=> $x83000 (= ud_1_5 false))))
(assert
 (let (($x83000 (< makespan 9)))
 (=> $x83000 (= ud_5_1 false))))
(assert
 (= (<= (+ 0_x 6) 5_x) lr_1_6))
(assert
 (= (<= (+ 0_y 3) 5_y) ud_1_6))
(assert
 (= (<= (+ 5_x 3) 0_x) lr_6_1))
(assert
 (= (<= (+ 5_y 5) 0_y) ud_6_1))
(assert
 (or lr_1_6 lr_6_1 ud_1_6 ud_6_1))
(assert
 (let (($x82952 (< makespan 8)))
 (=> $x82952 (= ud_1_6 false))))
(assert
 (let (($x82952 (< makespan 8)))
 (=> $x82952 (= ud_6_1 false))))
(assert
 (= (<= (+ 0_x 6) 6_x) lr_1_7))
(assert
 (= (<= (+ 0_y 3) 6_y) ud_1_7))
(assert
 (= (<= (+ 6_x 3) 0_x) lr_7_1))
(assert
 (= (<= (+ 6_y 4) 0_y) ud_7_1))
(assert
 (or lr_1_7 lr_7_1 ud_1_7 ud_7_1))
(assert
 (let (($x82905 (< makespan 7)))
 (=> $x82905 (= ud_1_7 false))))
(assert
 (let (($x82905 (< makespan 7)))
 (=> $x82905 (= ud_7_1 false))))
(assert
 (= (<= (+ 0_x 6) 7_x) lr_1_8))
(assert
 (= (<= (+ 0_y 3) 7_y) ud_1_8))
(assert
 (= (<= (+ 7_x 3) 0_x) lr_8_1))
(assert
 (= (<= (+ 7_y 3) 0_y) ud_8_1))
(assert
 (or lr_1_8 lr_8_1 ud_1_8 ud_8_1))
(assert
 (let (($x82847 (< makespan 6)))
 (=> $x82847 (= ud_1_8 false))))
(assert
 (let (($x82847 (< makespan 6)))
 (=> $x82847 (= ud_8_1 false))))
(assert
 (= (<= (+ 1_x 3) 2_x) lr_2_3))
(assert
 (= (<= (+ 1_y 9) 2_y) ud_2_3))
(assert
 (= (<= (+ 2_x 3) 1_x) lr_3_2))
(assert
 (= (<= (+ 2_y 8) 1_y) ud_3_2))
(assert
 (or lr_2_3 lr_3_2 ud_2_3 ud_3_2))
(assert
 (let (($x82797 (< makespan 17)))
 (=> $x82797 (= ud_2_3 false))))
(assert
 (let (($x83279 (= ud_3_2 false)))
 (let (($x82797 (< makespan 17)))
 (=> $x82797 $x83279))))
(assert
 (= (<= (+ 1_x 3) 3_x) lr_2_4))
(assert
 (= (<= (+ 1_y 9) 3_y) ud_2_4))
(assert
 (= (<= (+ 3_x 3) 1_x) lr_4_2))
(assert
 (= (<= (+ 3_y 7) 1_y) ud_4_2))
(assert
 (or lr_2_4 lr_4_2 ud_2_4 ud_4_2))
(assert
 (let (($x25825 (< makespan 16)))
 (=> $x25825 (= ud_2_4 false))))
(assert
 (let (($x83258 (= ud_4_2 false)))
 (let (($x25825 (< makespan 16)))
 (=> $x25825 $x83258))))
(assert
 (= (<= (+ 1_x 3) 4_x) lr_2_5))
(assert
 (= (<= (+ 1_y 9) 4_y) ud_2_5))
(assert
 (= (<= (+ 4_x 3) 1_x) lr_5_2))
(assert
 (= (<= (+ 4_y 6) 1_y) ud_5_2))
(assert
 (or lr_2_5 lr_5_2 ud_2_5 ud_5_2))
(assert
 (let (($x82709 (< makespan 15)))
 (=> $x82709 (= ud_2_5 false))))
(assert
 (let (($x2647 (= ud_5_2 false)))
 (let (($x82709 (< makespan 15)))
 (=> $x82709 $x2647))))
(assert
 (= (<= (+ 1_x 3) 5_x) lr_2_6))
(assert
 (= (<= (+ 1_y 9) 5_y) ud_2_6))
(assert
 (= (<= (+ 5_x 3) 1_x) lr_6_2))
(assert
 (= (<= (+ 5_y 5) 1_y) ud_6_2))
(assert
 (or lr_2_6 lr_6_2 ud_2_6 ud_6_2))
(assert
 (let (($x82662 (< makespan 14)))
 (=> $x82662 (= ud_2_6 false))))
(assert
 (let (($x83226 (= ud_6_2 false)))
 (let (($x82662 (< makespan 14)))
 (=> $x82662 $x83226))))
(assert
 (= (<= (+ 1_x 3) 6_x) lr_2_7))
(assert
 (= (<= (+ 1_y 9) 6_y) ud_2_7))
(assert
 (= (<= (+ 6_x 3) 1_x) lr_7_2))
(assert
 (= (<= (+ 6_y 4) 1_y) ud_7_2))
(assert
 (or lr_2_7 lr_7_2 ud_2_7 ud_7_2))
(assert
 (let (($x9372 (< makespan 13)))
 (=> $x9372 (= ud_2_7 false))))
(assert
 (let (($x9372 (< makespan 13)))
 (=> $x9372 (= ud_7_2 false))))
(assert
 (= (<= (+ 1_x 3) 7_x) lr_2_8))
(assert
 (= (<= (+ 1_y 9) 7_y) ud_2_8))
(assert
 (= (<= (+ 7_x 3) 1_x) lr_8_2))
(assert
 (= (<= (+ 7_y 3) 1_y) ud_8_2))
(assert
 (or lr_2_8 lr_8_2 ud_2_8 ud_8_2))
(assert
 (let (($x83153 (< makespan 12)))
 (=> $x83153 (= ud_2_8 false))))
(assert
 (let (($x83153 (< makespan 12)))
 (=> $x83153 (= ud_8_2 false))))
(assert
 (= (<= (+ 2_x 3) 3_x) lr_3_4))
(assert
 (= (<= (+ 2_y 8) 3_y) ud_3_4))
(assert
 (= (<= (+ 3_x 3) 2_x) lr_4_3))
(assert
 (= (<= (+ 3_y 7) 2_y) ud_4_3))
(assert
 (or lr_3_4 lr_4_3 ud_3_4 ud_4_3))
(assert
 (let (($x82709 (< makespan 15)))
 (=> $x82709 (= ud_3_4 false))))
(assert
 (let (($x82709 (< makespan 15)))
 (=> $x82709 (= ud_4_3 false))))
(assert
 (= (<= (+ 2_x 3) 4_x) lr_3_5))
(assert
 (= (<= (+ 2_y 8) 4_y) ud_3_5))
(assert
 (= (<= (+ 4_x 3) 2_x) lr_5_3))
(assert
 (= (<= (+ 4_y 6) 2_y) ud_5_3))
(assert
 (or lr_3_5 lr_5_3 ud_3_5 ud_5_3))
(assert
 (let (($x82662 (< makespan 14)))
 (=> $x82662 (= ud_3_5 false))))
(assert
 (let (($x82662 (< makespan 14)))
 (=> $x82662 (= ud_5_3 false))))
(assert
 (= (<= (+ 2_x 3) 5_x) lr_3_6))
(assert
 (= (<= (+ 2_y 8) 5_y) ud_3_6))
(assert
 (= (<= (+ 5_x 3) 2_x) lr_6_3))
(assert
 (= (<= (+ 5_y 5) 2_y) ud_6_3))
(assert
 (or lr_3_6 lr_6_3 ud_3_6 ud_6_3))
(assert
 (let (($x9372 (< makespan 13)))
 (=> $x9372 (= ud_3_6 false))))
(assert
 (let (($x9372 (< makespan 13)))
 (=> $x9372 (= ud_6_3 false))))
(assert
 (= (<= (+ 2_x 3) 6_x) lr_3_7))
(assert
 (= (<= (+ 2_y 8) 6_y) ud_3_7))
(assert
 (= (<= (+ 6_x 3) 2_x) lr_7_3))
(assert
 (= (<= (+ 6_y 4) 2_y) ud_7_3))
(assert
 (or lr_3_7 lr_7_3 ud_3_7 ud_7_3))
(assert
 (let (($x83153 (< makespan 12)))
 (=> $x83153 (= ud_3_7 false))))
(assert
 (let (($x83153 (< makespan 12)))
 (=> $x83153 (= ud_7_3 false))))
(assert
 (= (<= (+ 2_x 3) 7_x) lr_3_8))
(assert
 (= (<= (+ 2_y 8) 7_y) ud_3_8))
(assert
 (= (<= (+ 7_x 3) 2_x) lr_8_3))
(assert
 (= (<= (+ 7_y 3) 2_y) ud_8_3))
(assert
 (or lr_3_8 lr_8_3 ud_3_8 ud_8_3))
(assert
 (let (($x6256 (< makespan 11)))
 (=> $x6256 (= ud_3_8 false))))
(assert
 (let (($x6256 (< makespan 11)))
 (=> $x6256 (= ud_8_3 false))))
(assert
 (= (<= (+ 3_x 3) 4_x) lr_4_5))
(assert
 (= (<= (+ 3_y 7) 4_y) ud_4_5))
(assert
 (= (<= (+ 4_x 3) 3_x) lr_5_4))
(assert
 (= (<= (+ 4_y 6) 3_y) ud_5_4))
(assert
 (or lr_4_5 lr_5_4 ud_4_5 ud_5_4))
(assert
 (let (($x9372 (< makespan 13)))
 (=> $x9372 (= ud_4_5 false))))
(assert
 (let (($x9372 (< makespan 13)))
 (=> $x9372 (= ud_5_4 false))))
(assert
 (= (<= (+ 3_x 3) 5_x) lr_4_6))
(assert
 (= (<= (+ 3_y 7) 5_y) ud_4_6))
(assert
 (= (<= (+ 5_x 3) 3_x) lr_6_4))
(assert
 (= (<= (+ 5_y 5) 3_y) ud_6_4))
(assert
 (or lr_4_6 lr_6_4 ud_4_6 ud_6_4))
(assert
 (let (($x83153 (< makespan 12)))
 (=> $x83153 (= ud_4_6 false))))
(assert
 (let (($x83153 (< makespan 12)))
 (=> $x83153 (= ud_6_4 false))))
(assert
 (= (<= (+ 3_x 3) 6_x) lr_4_7))
(assert
 (= (<= (+ 3_y 7) 6_y) ud_4_7))
(assert
 (= (<= (+ 6_x 3) 3_x) lr_7_4))
(assert
 (= (<= (+ 6_y 4) 3_y) ud_7_4))
(assert
 (or lr_4_7 lr_7_4 ud_4_7 ud_7_4))
(assert
 (let (($x6256 (< makespan 11)))
 (=> $x6256 (= ud_4_7 false))))
(assert
 (let (($x6256 (< makespan 11)))
 (=> $x6256 (= ud_7_4 false))))
(assert
 (= (<= (+ 3_x 3) 7_x) lr_4_8))
(assert
 (= (<= (+ 3_y 7) 7_y) ud_4_8))
(assert
 (= (<= (+ 7_x 3) 3_x) lr_8_4))
(assert
 (= (<= (+ 7_y 3) 3_y) ud_8_4))
(assert
 (or lr_4_8 lr_8_4 ud_4_8 ud_8_4))
(assert
 (let (($x83049 (< makespan 10)))
 (=> $x83049 (= ud_4_8 false))))
(assert
 (let (($x83049 (< makespan 10)))
 (=> $x83049 (= ud_8_4 false))))
(assert
 (= (<= (+ 4_x 3) 5_x) lr_5_6))
(assert
 (= (<= (+ 4_y 6) 5_y) ud_5_6))
(assert
 (= (<= (+ 5_x 3) 4_x) lr_6_5))
(assert
 (= (<= (+ 5_y 5) 4_y) ud_6_5))
(assert
 (or lr_5_6 lr_6_5 ud_5_6 ud_6_5))
(assert
 (let (($x6256 (< makespan 11)))
 (=> $x6256 (= ud_5_6 false))))
(assert
 (let (($x6256 (< makespan 11)))
 (=> $x6256 (= ud_6_5 false))))
(assert
 (= (<= (+ 4_x 3) 6_x) lr_5_7))
(assert
 (= (<= (+ 4_y 6) 6_y) ud_5_7))
(assert
 (= (<= (+ 6_x 3) 4_x) lr_7_5))
(assert
 (= (<= (+ 6_y 4) 4_y) ud_7_5))
(assert
 (or lr_5_7 lr_7_5 ud_5_7 ud_7_5))
(assert
 (let (($x83049 (< makespan 10)))
 (=> $x83049 (= ud_5_7 false))))
(assert
 (let (($x83049 (< makespan 10)))
 (=> $x83049 (= ud_7_5 false))))
(assert
 (= (<= (+ 4_x 3) 7_x) lr_5_8))
(assert
 (= (<= (+ 4_y 6) 7_y) ud_5_8))
(assert
 (= (<= (+ 7_x 3) 4_x) lr_8_5))
(assert
 (= (<= (+ 7_y 3) 4_y) ud_8_5))
(assert
 (or lr_5_8 lr_8_5 ud_5_8 ud_8_5))
(assert
 (let (($x83000 (< makespan 9)))
 (=> $x83000 (= ud_5_8 false))))
(assert
 (let (($x83000 (< makespan 9)))
 (=> $x83000 (= ud_8_5 false))))
(assert
 (= (<= (+ 5_x 3) 6_x) lr_6_7))
(assert
 (= (<= (+ 5_y 5) 6_y) ud_6_7))
(assert
 (= (<= (+ 6_x 3) 5_x) lr_7_6))
(assert
 (= (<= (+ 6_y 4) 5_y) ud_7_6))
(assert
 (or lr_6_7 lr_7_6 ud_6_7 ud_7_6))
(assert
 (let (($x83000 (< makespan 9)))
 (=> $x83000 (= ud_6_7 false))))
(assert
 (let (($x83000 (< makespan 9)))
 (=> $x83000 (= ud_7_6 false))))
(assert
 (= (<= (+ 5_x 3) 7_x) lr_6_8))
(assert
 (= (<= (+ 5_y 5) 7_y) ud_6_8))
(assert
 (= (<= (+ 7_x 3) 5_x) lr_8_6))
(assert
 (= (<= (+ 7_y 3) 5_y) ud_8_6))
(assert
 (or lr_6_8 lr_8_6 ud_6_8 ud_8_6))
(assert
 (let (($x82952 (< makespan 8)))
 (=> $x82952 (= ud_6_8 false))))
(assert
 (let (($x82952 (< makespan 8)))
 (=> $x82952 (= ud_8_6 false))))
(assert
 (= (<= (+ 6_x 3) 7_x) lr_7_8))
(assert
 (= (<= (+ 6_y 4) 7_y) ud_7_8))
(assert
 (= (<= (+ 7_x 3) 6_x) lr_8_7))
(assert
 (= (<= (+ 7_y 3) 6_y) ud_8_7))
(assert
 (or lr_7_8 lr_8_7 ud_7_8 ud_8_7))
(assert
 (let (($x82905 (< makespan 7)))
 (=> $x82905 (= ud_7_8 false))))
(assert
 (let (($x82905 (< makespan 7)))
 (=> $x82905 (= ud_8_7 false))))
(check-sat)
