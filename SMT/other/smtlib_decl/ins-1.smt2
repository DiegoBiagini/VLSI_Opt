; benchmark generated from python API
(set-info :status unknown)
(declare-fun makespan () Int)
(declare-fun 0_y () Int)
(declare-fun 0_x () Int)
(declare-fun 1_y () Int)
(declare-fun 1_x () Int)
(declare-fun 2_y () Int)
(declare-fun 2_x () Int)
(declare-fun 3_y () Int)
(declare-fun 3_x () Int)
(assert
 (>= makespan 8))
(assert
 (<= makespan 13))
(assert
 (let ((?x37 (+ 0_y 3)))
 (<= ?x37 makespan)))
(assert
 (let ((?x39 (+ 0_x 3)))
 (<= ?x39 8)))
(assert
 (>= 0_x 0))
(assert
 (<= 0_y 10))
(assert
 (>= 0_y 0))
(assert
 (let ((?x53 (+ 1_y 5)))
 (<= ?x53 makespan)))
(assert
 (let ((?x55 (+ 1_x 3)))
 (<= ?x55 8)))
(assert
 (>= 1_x 0))
(assert
 (<= 1_y 8))
(assert
 (>= 1_y 0))
(assert
 (let ((?x64 (+ 2_y 3)))
 (<= ?x64 makespan)))
(assert
 (let ((?x66 (+ 2_x 5)))
 (<= ?x66 8)))
(assert
 (>= 2_x 0))
(assert
 (<= 2_y 10))
(assert
 (>= 2_y 0))
(assert
 (let ((?x74 (+ 3_y 5)))
 (<= ?x74 makespan)))
(assert
 (let ((?x76 (+ 3_x 5)))
 (<= ?x76 8)))
(assert
 (>= 3_x 0))
(assert
 (<= 3_y 8))
(assert
 (>= 3_y 0))
(assert
 (or (<= (+ 0_x 3) 1_x) (<= (+ 0_y 3) 1_y) (<= (+ 1_x 3) 0_x) (<= (+ 1_y 5) 0_y)))
(assert
 (or (<= (+ 0_x 3) 2_x) (<= (+ 0_y 3) 2_y) (<= (+ 2_x 5) 0_x) (<= (+ 2_y 3) 0_y)))
(assert
 (or (<= (+ 0_x 3) 3_x) (<= (+ 0_y 3) 3_y) (<= (+ 3_x 5) 0_x) (<= (+ 3_y 5) 0_y)))
(assert
 (or (<= (+ 1_x 3) 2_x) (<= (+ 1_y 5) 2_y) (<= (+ 2_x 5) 1_x) (<= (+ 2_y 3) 1_y)))
(assert
 (or (<= (+ 1_x 3) 3_x) (<= (+ 1_y 5) 3_y) (<= (+ 3_x 5) 1_x) (<= (+ 3_y 5) 1_y)))
(assert
 (or (<= (+ 2_x 5) 3_x) (<= (+ 2_y 3) 3_y) (<= (+ 3_x 5) 2_x) (<= (+ 3_y 5) 2_y)))
(assert
 (let ((?x174 (+ (ite (and (<= 0_y 0) (>= (+ 0_y 3) 0)) 3 0))))
 (<= ?x174 8)))
(assert
 (let ((?x184 (+ (ite (and (<= 1_y 0) (>= (+ 1_y 5) 0)) 3 0))))
 (<= ?x184 8)))
(assert
 (let ((?x193 (+ (ite (and (<= 2_y 0) (>= (+ 2_y 3) 0)) 5 0))))
 (<= ?x193 8)))
(assert
 (let ((?x202 (+ (ite (and (<= 3_y 0) (>= (+ 3_y 5) 0)) 5 0))))
 (<= ?x202 8)))
(assert
 (let ((?x212 (+ (ite (and (<= 0_y 1) (>= (+ 0_y 3) 1)) 3 0))))
 (<= ?x212 8)))
(assert
 (let ((?x222 (+ (ite (and (<= 1_y 1) (>= (+ 1_y 5) 1)) 3 0))))
 (<= ?x222 8)))
(assert
 (let ((?x232 (+ (ite (and (<= 2_y 1) (>= (+ 2_y 3) 1)) 5 0))))
 (<= ?x232 8)))
(assert
 (let ((?x241 (+ (ite (and (<= 3_y 1) (>= (+ 3_y 5) 1)) 5 0))))
 (<= ?x241 8)))
(assert
 (let ((?x251 (+ (ite (and (<= 0_y 2) (>= (+ 0_y 3) 2)) 3 0))))
 (<= ?x251 8)))
(assert
 (let ((?x260 (+ (ite (and (<= 1_y 2) (>= (+ 1_y 5) 2)) 3 0))))
 (<= ?x260 8)))
(assert
 (let ((?x269 (+ (ite (and (<= 2_y 2) (>= (+ 2_y 3) 2)) 5 0))))
 (<= ?x269 8)))
(assert
 (let ((?x278 (+ (ite (and (<= 3_y 2) (>= (+ 3_y 5) 2)) 5 0))))
 (<= ?x278 8)))
(assert
 (let ((?x287 (+ (ite (and (<= 0_y 3) (>= (+ 0_y 3) 3)) 3 0))))
 (<= ?x287 8)))
(assert
 (let ((?x295 (+ (ite (and (<= 1_y 3) (>= (+ 1_y 5) 3)) 3 0))))
 (<= ?x295 8)))
(assert
 (let ((?x304 (+ (ite (and (<= 2_y 3) (>= (+ 2_y 3) 3)) 5 0))))
 (<= ?x304 8)))
(assert
 (let ((?x312 (+ (ite (and (<= 3_y 3) (>= (+ 3_y 5) 3)) 5 0))))
 (<= ?x312 8)))
(assert
 (let ((?x322 (+ (ite (and (<= 0_y 4) (>= (+ 0_y 3) 4)) 3 0))))
 (<= ?x322 8)))
(assert
 (let ((?x331 (+ (ite (and (<= 1_y 4) (>= (+ 1_y 5) 4)) 3 0))))
 (<= ?x331 8)))
(assert
 (let ((?x340 (+ (ite (and (<= 2_y 4) (>= (+ 2_y 3) 4)) 5 0))))
 (<= ?x340 8)))
(assert
 (let ((?x349 (+ (ite (and (<= 3_y 4) (>= (+ 3_y 5) 4)) 5 0))))
 (<= ?x349 8)))
(assert
 (let ((?x358 (+ (ite (and (<= 0_y 5) (>= (+ 0_y 3) 5)) 3 0))))
 (<= ?x358 8)))
(assert
 (let ((?x367 (+ (ite (and (<= 1_y 5) (>= (+ 1_y 5) 5)) 3 0))))
 (<= ?x367 8)))
(assert
 (let ((?x375 (+ (ite (and (<= 2_y 5) (>= (+ 2_y 3) 5)) 5 0))))
 (<= ?x375 8)))
(assert
 (let ((?x384 (+ (ite (and (<= 3_y 5) (>= (+ 3_y 5) 5)) 5 0))))
 (<= ?x384 8)))
(assert
 (let ((?x393 (+ (ite (and (<= 0_y 6) (>= (+ 0_y 3) 6)) 3 0))))
 (<= ?x393 8)))
(assert
 (let ((?x402 (+ (ite (and (<= 1_y 6) (>= (+ 1_y 5) 6)) 3 0))))
 (<= ?x402 8)))
(assert
 (let ((?x411 (+ (ite (and (<= 2_y 6) (>= (+ 2_y 3) 6)) 5 0))))
 (<= ?x411 8)))
(assert
 (let ((?x420 (+ (ite (and (<= 3_y 6) (>= (+ 3_y 5) 6)) 5 0))))
 (<= ?x420 8)))
(assert
 (let ((?x430 (+ (ite (and (<= 0_y 7) (>= (+ 0_y 3) 7)) 3 0))))
 (<= ?x430 8)))
(assert
 (let ((?x439 (+ (ite (and (<= 1_y 7) (>= (+ 1_y 5) 7)) 3 0))))
 (<= ?x439 8)))
(assert
 (let ((?x448 (+ (ite (and (<= 2_y 7) (>= (+ 2_y 3) 7)) 5 0))))
 (<= ?x448 8)))
(assert
 (let ((?x457 (+ (ite (and (<= 3_y 7) (>= (+ 3_y 5) 7)) 5 0))))
 (<= ?x457 8)))
(assert
 (let ((?x466 (+ (ite (and (<= 0_y 8) (>= (+ 0_y 3) 8)) 3 0))))
 (<= ?x466 8)))
(assert
 (let ((?x474 (+ (ite (and (<= 1_y 8) (>= (+ 1_y 5) 8)) 3 0))))
 (<= ?x474 8)))
(assert
 (let ((?x483 (+ (ite (and (<= 2_y 8) (>= (+ 2_y 3) 8)) 5 0))))
 (<= ?x483 8)))
(assert
 (let ((?x491 (+ (ite (and (<= 3_y 8) (>= (+ 3_y 5) 8)) 5 0))))
 (<= ?x491 8)))
(assert
 (let ((?x501 (+ (ite (and (<= 0_y 9) (>= (+ 0_y 3) 9)) 3 0))))
 (<= ?x501 8)))
(assert
 (let ((?x510 (+ (ite (and (<= 1_y 9) (>= (+ 1_y 5) 9)) 3 0))))
 (<= ?x510 8)))
(assert
 (let ((?x519 (+ (ite (and (<= 2_y 9) (>= (+ 2_y 3) 9)) 5 0))))
 (<= ?x519 8)))
(assert
 (let ((?x528 (+ (ite (and (<= 3_y 9) (>= (+ 3_y 5) 9)) 5 0))))
 (<= ?x528 8)))
(assert
 (let ((?x536 (+ (ite (and (<= 0_y 10) (>= (+ 0_y 3) 10)) 3 0))))
 (<= ?x536 8)))
(assert
 (let ((?x545 (+ (ite (and (<= 1_y 10) (>= (+ 1_y 5) 10)) 3 0))))
 (<= ?x545 8)))
(assert
 (let ((?x553 (+ (ite (and (<= 2_y 10) (>= (+ 2_y 3) 10)) 5 0))))
 (<= ?x553 8)))
(assert
 (let ((?x562 (+ (ite (and (<= 3_y 10) (>= (+ 3_y 5) 10)) 5 0))))
 (<= ?x562 8)))
(assert
 (let ((?x572 (+ (ite (and (<= 0_y 11) (>= (+ 0_y 3) 11)) 3 0))))
 (<= ?x572 8)))
(assert
 (let ((?x581 (+ (ite (and (<= 1_y 11) (>= (+ 1_y 5) 11)) 3 0))))
 (<= ?x581 8)))
(assert
 (let ((?x590 (+ (ite (and (<= 2_y 11) (>= (+ 2_y 3) 11)) 5 0))))
 (<= ?x590 8)))
(assert
 (let ((?x599 (+ (ite (and (<= 3_y 11) (>= (+ 3_y 5) 11)) 5 0))))
 (<= ?x599 8)))
(assert
 (let ((?x609 (+ (ite (and (<= 0_y 12) (>= (+ 0_y 3) 12)) 3 0))))
 (<= ?x609 8)))
(assert
 (let ((?x618 (+ (ite (and (<= 1_y 12) (>= (+ 1_y 5) 12)) 3 0))))
 (<= ?x618 8)))
(assert
 (let ((?x627 (+ (ite (and (<= 2_y 12) (>= (+ 2_y 3) 12)) 5 0))))
 (<= ?x627 8)))
(assert
 (let ((?x636 (+ (ite (and (<= 3_y 12) (>= (+ 3_y 5) 12)) 5 0))))
 (<= ?x636 8)))
(assert
 (let ((?x645 (+ (ite (and (<= 0_x 0) (>= (+ 0_x 3) 0)) 3 0))))
 (<= ?x645 makespan)))
(assert
 (let ((?x657 (+ (ite (and (<= 1_x 0) (>= (+ 1_x 3) 0)) 5 0))))
 (<= ?x657 makespan)))
(assert
 (let ((?x669 (+ (ite (and (<= 2_x 0) (>= (+ 2_x 5) 0)) 3 0))))
 (<= ?x669 makespan)))
(assert
 (let ((?x681 (+ (ite (and (<= 3_x 0) (>= (+ 3_x 5) 0)) 5 0))))
 (<= ?x681 makespan)))
(assert
 (let ((?x693 (+ (ite (and (<= 0_x 1) (>= (+ 0_x 3) 1)) 3 0))))
 (<= ?x693 makespan)))
(assert
 (let ((?x705 (+ (ite (and (<= 1_x 1) (>= (+ 1_x 3) 1)) 5 0))))
 (<= ?x705 makespan)))
(assert
 (let ((?x717 (+ (ite (and (<= 2_x 1) (>= (+ 2_x 5) 1)) 3 0))))
 (<= ?x717 makespan)))
(assert
 (let ((?x729 (+ (ite (and (<= 3_x 1) (>= (+ 3_x 5) 1)) 5 0))))
 (<= ?x729 makespan)))
(assert
 (let ((?x741 (+ (ite (and (<= 0_x 2) (>= (+ 0_x 3) 2)) 3 0))))
 (<= ?x741 makespan)))
(assert
 (let ((?x753 (+ (ite (and (<= 1_x 2) (>= (+ 1_x 3) 2)) 5 0))))
 (<= ?x753 makespan)))
(assert
 (let ((?x765 (+ (ite (and (<= 2_x 2) (>= (+ 2_x 5) 2)) 3 0))))
 (<= ?x765 makespan)))
(assert
 (let ((?x777 (+ (ite (and (<= 3_x 2) (>= (+ 3_x 5) 2)) 5 0))))
 (<= ?x777 makespan)))
(assert
 (let ((?x789 (+ (ite (and (<= 0_x 3) (>= (+ 0_x 3) 3)) 3 0))))
 (<= ?x789 makespan)))
(assert
 (let ((?x800 (+ (ite (and (<= 1_x 3) (>= (+ 1_x 3) 3)) 5 0))))
 (<= ?x800 makespan)))
(assert
 (let ((?x810 (+ (ite (and (<= 2_x 3) (>= (+ 2_x 5) 3)) 3 0))))
 (<= ?x810 makespan)))
(assert
 (let ((?x821 (+ (ite (and (<= 3_x 3) (>= (+ 3_x 5) 3)) 5 0))))
 (<= ?x821 makespan)))
(assert
 (let ((?x833 (+ (ite (and (<= 0_x 4) (>= (+ 0_x 3) 4)) 3 0))))
 (<= ?x833 makespan)))
(assert
 (let ((?x845 (+ (ite (and (<= 1_x 4) (>= (+ 1_x 3) 4)) 5 0))))
 (<= ?x845 makespan)))
(assert
 (let ((?x857 (+ (ite (and (<= 2_x 4) (>= (+ 2_x 5) 4)) 3 0))))
 (<= ?x857 makespan)))
(assert
 (let ((?x869 (+ (ite (and (<= 3_x 4) (>= (+ 3_x 5) 4)) 5 0))))
 (<= ?x869 makespan)))
(assert
 (let ((?x880 (+ (ite (and (<= 0_x 5) (>= (+ 0_x 3) 5)) 3 0))))
 (<= ?x880 makespan)))
(assert
 (let ((?x891 (+ (ite (and (<= 1_x 5) (>= (+ 1_x 3) 5)) 5 0))))
 (<= ?x891 makespan)))
(assert
 (let ((?x903 (+ (ite (and (<= 2_x 5) (>= (+ 2_x 5) 5)) 3 0))))
 (<= ?x903 makespan)))
(assert
 (let ((?x914 (+ (ite (and (<= 3_x 5) (>= (+ 3_x 5) 5)) 5 0))))
 (<= ?x914 makespan)))
(assert
 (let ((?x925 (+ (ite (and (<= 0_x 6) (>= (+ 0_x 3) 6)) 3 0))))
 (<= ?x925 makespan)))
(assert
 (let ((?x937 (+ (ite (and (<= 1_x 6) (>= (+ 1_x 3) 6)) 5 0))))
 (<= ?x937 makespan)))
(assert
 (let ((?x949 (+ (ite (and (<= 2_x 6) (>= (+ 2_x 5) 6)) 3 0))))
 (<= ?x949 makespan)))
(assert
 (let ((?x961 (+ (ite (and (<= 3_x 6) (>= (+ 3_x 5) 6)) 5 0))))
 (<= ?x961 makespan)))
(assert
 (let ((?x973 (+ (ite (and (<= 0_x 7) (>= (+ 0_x 3) 7)) 3 0))))
 (<= ?x973 makespan)))
(assert
 (let ((?x985 (+ (ite (and (<= 1_x 7) (>= (+ 1_x 3) 7)) 5 0))))
 (<= ?x985 makespan)))
(assert
 (let ((?x997 (+ (ite (and (<= 2_x 7) (>= (+ 2_x 5) 7)) 3 0))))
 (<= ?x997 makespan)))
(assert
 (let ((?x1009 (+ (ite (and (<= 3_x 7) (>= (+ 3_x 5) 7)) 5 0))))
 (<= ?x1009 makespan)))
(check-sat)
