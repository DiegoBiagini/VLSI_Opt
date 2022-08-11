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
(declare-fun 4_y () Int)
(declare-fun 4_x () Int)
(declare-fun 5_y () Int)
(declare-fun 5_x () Int)
(declare-fun 6_y () Int)
(declare-fun 6_x () Int)
(assert
 (>= makespan 11))
(assert
 (<= makespan 16))
(assert
 (let ((?x9242 (+ 0_y 3)))
 (<= ?x9242 makespan)))
(assert
 (let ((?x8356 (+ 0_x 3)))
 (<= ?x8356 11)))
(assert
 (>= 0_x 0))
(assert
 (<= 0_y 13))
(assert
 (>= 0_y 0))
(assert
 (let ((?x16132 (+ 1_y 4)))
 (<= ?x16132 makespan)))
(assert
 (let ((?x23667 (+ 1_x 3)))
 (<= ?x23667 11)))
(assert
 (>= 1_x 0))
(assert
 (<= 1_y 12))
(assert
 (>= 1_y 0))
(assert
 (let ((?x29692 (+ 2_y 5)))
 (<= ?x29692 makespan)))
(assert
 (let ((?x964 (+ 2_x 3)))
 (<= ?x964 11)))
(assert
 (>= 2_x 0))
(assert
 (<= 2_y 11))
(assert
 (>= 2_y 0))
(assert
 (let ((?x1137 (+ 3_y 6)))
 (<= ?x1137 makespan)))
(assert
 (let ((?x2048 (+ 3_x 3)))
 (<= ?x2048 11)))
(assert
 (>= 3_x 0))
(assert
 (<= 3_y 10))
(assert
 (>= 3_y 0))
(assert
 (let ((?x26338 (+ 4_y 3)))
 (<= ?x26338 makespan)))
(assert
 (let ((?x29749 (+ 4_x 5)))
 (<= ?x29749 11)))
(assert
 (>= 4_x 0))
(assert
 (<= 4_y 13))
(assert
 (>= 4_y 0))
(assert
 (let ((?x12346 (+ 5_y 4)))
 (<= ?x12346 makespan)))
(assert
 (let ((?x22081 (+ 5_x 5)))
 (<= ?x22081 11)))
(assert
 (>= 5_x 0))
(assert
 (<= 5_y 12))
(assert
 (>= 5_y 0))
(assert
 (let ((?x6663 (+ 6_y 4)))
 (<= ?x6663 makespan)))
(assert
 (let ((?x15864 (+ 6_x 8)))
 (<= ?x15864 11)))
(assert
 (>= 6_x 0))
(assert
 (<= 6_y 12))
(assert
 (>= 6_y 0))
(assert
 (or (<= (+ 0_x 3) 1_x) (<= (+ 0_y 3) 1_y) (<= (+ 1_x 3) 0_x) (<= (+ 1_y 4) 0_y)))
(assert
 (or (<= (+ 0_x 3) 2_x) (<= (+ 0_y 3) 2_y) (<= (+ 2_x 3) 0_x) (<= (+ 2_y 5) 0_y)))
(assert
 (or (<= (+ 0_x 3) 3_x) (<= (+ 0_y 3) 3_y) (<= (+ 3_x 3) 0_x) (<= (+ 3_y 6) 0_y)))
(assert
 (or (<= (+ 0_x 3) 4_x) (<= (+ 0_y 3) 4_y) (<= (+ 4_x 5) 0_x) (<= (+ 4_y 3) 0_y)))
(assert
 (or (<= (+ 0_x 3) 5_x) (<= (+ 0_y 3) 5_y) (<= (+ 5_x 5) 0_x) (<= (+ 5_y 4) 0_y)))
(assert
 (or (<= (+ 0_x 3) 6_x) (<= (+ 0_y 3) 6_y) (<= (+ 6_x 8) 0_x) (<= (+ 6_y 4) 0_y)))
(assert
 (or (<= (+ 1_x 3) 2_x) (<= (+ 1_y 4) 2_y) (<= (+ 2_x 3) 1_x) (<= (+ 2_y 5) 1_y)))
(assert
 (or (<= (+ 1_x 3) 3_x) (<= (+ 1_y 4) 3_y) (<= (+ 3_x 3) 1_x) (<= (+ 3_y 6) 1_y)))
(assert
 (or (<= (+ 1_x 3) 4_x) (<= (+ 1_y 4) 4_y) (<= (+ 4_x 5) 1_x) (<= (+ 4_y 3) 1_y)))
(assert
 (or (<= (+ 1_x 3) 5_x) (<= (+ 1_y 4) 5_y) (<= (+ 5_x 5) 1_x) (<= (+ 5_y 4) 1_y)))
(assert
 (or (<= (+ 1_x 3) 6_x) (<= (+ 1_y 4) 6_y) (<= (+ 6_x 8) 1_x) (<= (+ 6_y 4) 1_y)))
(assert
 (or (<= (+ 2_x 3) 3_x) (<= (+ 2_y 5) 3_y) (<= (+ 3_x 3) 2_x) (<= (+ 3_y 6) 2_y)))
(assert
 (or (<= (+ 2_x 3) 4_x) (<= (+ 2_y 5) 4_y) (<= (+ 4_x 5) 2_x) (<= (+ 4_y 3) 2_y)))
(assert
 (or (<= (+ 2_x 3) 5_x) (<= (+ 2_y 5) 5_y) (<= (+ 5_x 5) 2_x) (<= (+ 5_y 4) 2_y)))
(assert
 (or (<= (+ 2_x 3) 6_x) (<= (+ 2_y 5) 6_y) (<= (+ 6_x 8) 2_x) (<= (+ 6_y 4) 2_y)))
(assert
 (or (<= (+ 3_x 3) 4_x) (<= (+ 3_y 6) 4_y) (<= (+ 4_x 5) 3_x) (<= (+ 4_y 3) 3_y)))
(assert
 (or (<= (+ 3_x 3) 5_x) (<= (+ 3_y 6) 5_y) (<= (+ 5_x 5) 3_x) (<= (+ 5_y 4) 3_y)))
(assert
 (or (<= (+ 3_x 3) 6_x) (<= (+ 3_y 6) 6_y) (<= (+ 6_x 8) 3_x) (<= (+ 6_y 4) 3_y)))
(assert
 (or (<= (+ 4_x 5) 5_x) (<= (+ 4_y 3) 5_y) (<= (+ 5_x 5) 4_x) (<= (+ 5_y 4) 4_y)))
(assert
 (or (<= (+ 4_x 5) 6_x) (<= (+ 4_y 3) 6_y) (<= (+ 6_x 8) 4_x) (<= (+ 6_y 4) 4_y)))
(assert
 (or (<= (+ 5_x 5) 6_x) (<= (+ 5_y 4) 6_y) (<= (+ 6_x 8) 5_x) (<= (+ 6_y 4) 5_y)))
(assert
 (let ((?x48 (+ (ite (and (<= 0_y 0) (>= (+ 0_y 3) 0)) 3 0))))
 (<= ?x48 11)))
(assert
 (let ((?x13195 (+ (ite (and (<= 1_y 0) (>= (+ 1_y 4) 0)) 3 0))))
 (<= ?x13195 11)))
(assert
 (let ((?x29585 (+ (ite (and (<= 2_y 0) (>= (+ 2_y 5) 0)) 3 0))))
 (<= ?x29585 11)))
(assert
 (let ((?x20212 (+ (ite (and (<= 3_y 0) (>= (+ 3_y 6) 0)) 3 0))))
 (<= ?x20212 11)))
(assert
 (let ((?x581 (+ (ite (and (<= 4_y 0) (>= (+ 4_y 3) 0)) 5 0))))
 (<= ?x581 11)))
(assert
 (let ((?x12207 (+ (ite (and (<= 5_y 0) (>= (+ 5_y 4) 0)) 5 0))))
 (<= ?x12207 11)))
(assert
 (let ((?x2340 (+ (ite (and (<= 6_y 0) (>= (+ 6_y 4) 0)) 8 0))))
 (<= ?x2340 11)))
(assert
 (let ((?x19081 (+ (ite (and (<= 0_y 1) (>= (+ 0_y 3) 1)) 3 0))))
 (<= ?x19081 11)))
(assert
 (let ((?x21591 (+ (ite (and (<= 1_y 1) (>= (+ 1_y 4) 1)) 3 0))))
 (<= ?x21591 11)))
(assert
 (let ((?x15240 (+ (ite (and (<= 2_y 1) (>= (+ 2_y 5) 1)) 3 0))))
 (<= ?x15240 11)))
(assert
 (let ((?x732 (+ (ite (and (<= 3_y 1) (>= (+ 3_y 6) 1)) 3 0))))
 (<= ?x732 11)))
(assert
 (let ((?x17010 (+ (ite (and (<= 4_y 1) (>= (+ 4_y 3) 1)) 5 0))))
 (<= ?x17010 11)))
(assert
 (let ((?x15681 (+ (ite (and (<= 5_y 1) (>= (+ 5_y 4) 1)) 5 0))))
 (<= ?x15681 11)))
(assert
 (let ((?x10862 (+ (ite (and (<= 6_y 1) (>= (+ 6_y 4) 1)) 8 0))))
 (<= ?x10862 11)))
(assert
 (let ((?x5180 (+ (ite (and (<= 0_y 2) (>= (+ 0_y 3) 2)) 3 0))))
 (<= ?x5180 11)))
(assert
 (let ((?x26422 (+ (ite (and (<= 1_y 2) (>= (+ 1_y 4) 2)) 3 0))))
 (<= ?x26422 11)))
(assert
 (let ((?x26615 (+ (ite (and (<= 2_y 2) (>= (+ 2_y 5) 2)) 3 0))))
 (<= ?x26615 11)))
(assert
 (let ((?x26660 (+ (ite (and (<= 3_y 2) (>= (+ 3_y 6) 2)) 3 0))))
 (<= ?x26660 11)))
(assert
 (let ((?x26853 (+ (ite (and (<= 4_y 2) (>= (+ 4_y 3) 2)) 5 0))))
 (<= ?x26853 11)))
(assert
 (let ((?x26903 (+ (ite (and (<= 5_y 2) (>= (+ 5_y 4) 2)) 5 0))))
 (<= ?x26903 11)))
(assert
 (let ((?x27079 (+ (ite (and (<= 6_y 2) (>= (+ 6_y 4) 2)) 8 0))))
 (<= ?x27079 11)))
(assert
 (let ((?x27105 (+ (ite (and (<= 0_y 3) (>= (+ 0_y 3) 3)) 3 0))))
 (<= ?x27105 11)))
(assert
 (let ((?x27152 (+ (ite (and (<= 1_y 3) (>= (+ 1_y 4) 3)) 3 0))))
 (<= ?x27152 11)))
(assert
 (let ((?x27345 (+ (ite (and (<= 2_y 3) (>= (+ 2_y 5) 3)) 3 0))))
 (<= ?x27345 11)))
(assert
 (let ((?x27450 (+ (ite (and (<= 3_y 3) (>= (+ 3_y 6) 3)) 3 0))))
 (<= ?x27450 11)))
(assert
 (let ((?x27574 (+ (ite (and (<= 4_y 3) (>= (+ 4_y 3) 3)) 5 0))))
 (<= ?x27574 11)))
(assert
 (let ((?x27692 (+ (ite (and (<= 5_y 3) (>= (+ 5_y 4) 3)) 5 0))))
 (<= ?x27692 11)))
(assert
 (let ((?x27799 (+ (ite (and (<= 6_y 3) (>= (+ 6_y 4) 3)) 8 0))))
 (<= ?x27799 11)))
(assert
 (let ((?x27935 (+ (ite (and (<= 0_y 4) (>= (+ 0_y 3) 4)) 3 0))))
 (<= ?x27935 11)))
(assert
 (let ((?x28053 (+ (ite (and (<= 1_y 4) (>= (+ 1_y 4) 4)) 3 0))))
 (<= ?x28053 11)))
(assert
 (let ((?x7318 (+ (ite (and (<= 2_y 4) (>= (+ 2_y 5) 4)) 3 0))))
 (<= ?x7318 11)))
(assert
 (let ((?x28241 (+ (ite (and (<= 3_y 4) (>= (+ 3_y 6) 4)) 3 0))))
 (<= ?x28241 11)))
(assert
 (let ((?x29461 (+ (ite (and (<= 4_y 4) (>= (+ 4_y 3) 4)) 5 0))))
 (<= ?x29461 11)))
(assert
 (let ((?x29977 (+ (ite (and (<= 5_y 4) (>= (+ 5_y 4) 4)) 5 0))))
 (<= ?x29977 11)))
(assert
 (let ((?x28859 (+ (ite (and (<= 6_y 4) (>= (+ 6_y 4) 4)) 8 0))))
 (<= ?x28859 11)))
(assert
 (let ((?x28705 (+ (ite (and (<= 0_y 5) (>= (+ 0_y 3) 5)) 3 0))))
 (<= ?x28705 11)))
(assert
 (let ((?x2698 (+ (ite (and (<= 1_y 5) (>= (+ 1_y 4) 5)) 3 0))))
 (<= ?x2698 11)))
(assert
 (let ((?x28453 (+ (ite (and (<= 2_y 5) (>= (+ 2_y 5) 5)) 3 0))))
 (<= ?x28453 11)))
(assert
 (let ((?x28119 (+ (ite (and (<= 3_y 5) (>= (+ 3_y 6) 5)) 3 0))))
 (<= ?x28119 11)))
(assert
 (let ((?x27998 (+ (ite (and (<= 4_y 5) (>= (+ 4_y 3) 5)) 5 0))))
 (<= ?x27998 11)))
(assert
 (let ((?x27940 (+ (ite (and (<= 5_y 5) (>= (+ 5_y 4) 5)) 5 0))))
 (<= ?x27940 11)))
(assert
 (let ((?x27653 (+ (ite (and (<= 6_y 5) (>= (+ 6_y 4) 5)) 8 0))))
 (<= ?x27653 11)))
(assert
 (let ((?x27531 (+ (ite (and (<= 0_y 6) (>= (+ 0_y 3) 6)) 3 0))))
 (<= ?x27531 11)))
(assert
 (let ((?x27181 (+ (ite (and (<= 1_y 6) (>= (+ 1_y 4) 6)) 3 0))))
 (<= ?x27181 11)))
(assert
 (let ((?x27123 (+ (ite (and (<= 2_y 6) (>= (+ 2_y 5) 6)) 3 0))))
 (<= ?x27123 11)))
(assert
 (let ((?x26825 (+ (ite (and (<= 3_y 6) (>= (+ 3_y 6) 6)) 3 0))))
 (<= ?x26825 11)))
(assert
 (let ((?x26736 (+ (ite (and (<= 4_y 6) (>= (+ 4_y 3) 6)) 5 0))))
 (<= ?x26736 11)))
(assert
 (let ((?x26401 (+ (ite (and (<= 5_y 6) (>= (+ 5_y 4) 6)) 5 0))))
 (<= ?x26401 11)))
(assert
 (let ((?x1146 (+ (ite (and (<= 6_y 6) (>= (+ 6_y 4) 6)) 8 0))))
 (<= ?x1146 11)))
(assert
 (let ((?x22831 (+ (ite (and (<= 0_y 7) (>= (+ 0_y 3) 7)) 3 0))))
 (<= ?x22831 11)))
(assert
 (let ((?x9861 (+ (ite (and (<= 1_y 7) (>= (+ 1_y 4) 7)) 3 0))))
 (<= ?x9861 11)))
(assert
 (let ((?x16581 (+ (ite (and (<= 2_y 7) (>= (+ 2_y 5) 7)) 3 0))))
 (<= ?x16581 11)))
(assert
 (let ((?x13839 (+ (ite (and (<= 3_y 7) (>= (+ 3_y 6) 7)) 3 0))))
 (<= ?x13839 11)))
(assert
 (let ((?x13763 (+ (ite (and (<= 4_y 7) (>= (+ 4_y 3) 7)) 5 0))))
 (<= ?x13763 11)))
(assert
 (let ((?x16800 (+ (ite (and (<= 5_y 7) (>= (+ 5_y 4) 7)) 5 0))))
 (<= ?x16800 11)))
(assert
 (let ((?x3157 (+ (ite (and (<= 6_y 7) (>= (+ 6_y 4) 7)) 8 0))))
 (<= ?x3157 11)))
(assert
 (let ((?x10029 (+ (ite (and (<= 0_y 8) (>= (+ 0_y 3) 8)) 3 0))))
 (<= ?x10029 11)))
(assert
 (let ((?x5162 (+ (ite (and (<= 1_y 8) (>= (+ 1_y 4) 8)) 3 0))))
 (<= ?x5162 11)))
(assert
 (let ((?x3054 (+ (ite (and (<= 2_y 8) (>= (+ 2_y 5) 8)) 3 0))))
 (<= ?x3054 11)))
(assert
 (let ((?x17815 (+ (ite (and (<= 3_y 8) (>= (+ 3_y 6) 8)) 3 0))))
 (<= ?x17815 11)))
(assert
 (let ((?x20147 (+ (ite (and (<= 4_y 8) (>= (+ 4_y 3) 8)) 5 0))))
 (<= ?x20147 11)))
(assert
 (let ((?x23893 (+ (ite (and (<= 5_y 8) (>= (+ 5_y 4) 8)) 5 0))))
 (<= ?x23893 11)))
(assert
 (let ((?x22037 (+ (ite (and (<= 6_y 8) (>= (+ 6_y 4) 8)) 8 0))))
 (<= ?x22037 11)))
(assert
 (let ((?x16777 (+ (ite (and (<= 0_y 9) (>= (+ 0_y 3) 9)) 3 0))))
 (<= ?x16777 11)))
(assert
 (let ((?x17876 (+ (ite (and (<= 1_y 9) (>= (+ 1_y 4) 9)) 3 0))))
 (<= ?x17876 11)))
(assert
 (let ((?x14115 (+ (ite (and (<= 2_y 9) (>= (+ 2_y 5) 9)) 3 0))))
 (<= ?x14115 11)))
(assert
 (let ((?x6340 (+ (ite (and (<= 3_y 9) (>= (+ 3_y 6) 9)) 3 0))))
 (<= ?x6340 11)))
(assert
 (let ((?x7114 (+ (ite (and (<= 4_y 9) (>= (+ 4_y 3) 9)) 5 0))))
 (<= ?x7114 11)))
(assert
 (let ((?x23868 (+ (ite (and (<= 5_y 9) (>= (+ 5_y 4) 9)) 5 0))))
 (<= ?x23868 11)))
(assert
 (let ((?x18843 (+ (ite (and (<= 6_y 9) (>= (+ 6_y 4) 9)) 8 0))))
 (<= ?x18843 11)))
(assert
 (let ((?x12476 (+ (ite (and (<= 0_y 10) (>= (+ 0_y 3) 10)) 3 0))))
 (<= ?x12476 11)))
(assert
 (let ((?x5357 (+ (ite (and (<= 1_y 10) (>= (+ 1_y 4) 10)) 3 0))))
 (<= ?x5357 11)))
(assert
 (let ((?x9139 (+ (ite (and (<= 2_y 10) (>= (+ 2_y 5) 10)) 3 0))))
 (<= ?x9139 11)))
(assert
 (let ((?x15247 (+ (ite (and (<= 3_y 10) (>= (+ 3_y 6) 10)) 3 0))))
 (<= ?x15247 11)))
(assert
 (let ((?x2624 (+ (ite (and (<= 4_y 10) (>= (+ 4_y 3) 10)) 5 0))))
 (<= ?x2624 11)))
(assert
 (let ((?x6416 (+ (ite (and (<= 5_y 10) (>= (+ 5_y 4) 10)) 5 0))))
 (<= ?x6416 11)))
(assert
 (let ((?x2178 (+ (ite (and (<= 6_y 10) (>= (+ 6_y 4) 10)) 8 0))))
 (<= ?x2178 11)))
(assert
 (let ((?x4708 (+ (ite (and (<= 0_y 11) (>= (+ 0_y 3) 11)) 3 0))))
 (<= ?x4708 11)))
(assert
 (let ((?x3406 (+ (ite (and (<= 1_y 11) (>= (+ 1_y 4) 11)) 3 0))))
 (<= ?x3406 11)))
(assert
 (let ((?x17681 (+ (ite (and (<= 2_y 11) (>= (+ 2_y 5) 11)) 3 0))))
 (<= ?x17681 11)))
(assert
 (let ((?x23210 (+ (ite (and (<= 3_y 11) (>= (+ 3_y 6) 11)) 3 0))))
 (<= ?x23210 11)))
(assert
 (let ((?x13295 (+ (ite (and (<= 4_y 11) (>= (+ 4_y 3) 11)) 5 0))))
 (<= ?x13295 11)))
(assert
 (let ((?x25244 (+ (ite (and (<= 5_y 11) (>= (+ 5_y 4) 11)) 5 0))))
 (<= ?x25244 11)))
(assert
 (let ((?x14666 (+ (ite (and (<= 6_y 11) (>= (+ 6_y 4) 11)) 8 0))))
 (<= ?x14666 11)))
(assert
 (let ((?x15769 (+ (ite (and (<= 0_y 12) (>= (+ 0_y 3) 12)) 3 0))))
 (<= ?x15769 11)))
(assert
 (let ((?x22568 (+ (ite (and (<= 1_y 12) (>= (+ 1_y 4) 12)) 3 0))))
 (<= ?x22568 11)))
(assert
 (let ((?x28867 (+ (ite (and (<= 2_y 12) (>= (+ 2_y 5) 12)) 3 0))))
 (<= ?x28867 11)))
(assert
 (let ((?x10739 (+ (ite (and (<= 3_y 12) (>= (+ 3_y 6) 12)) 3 0))))
 (<= ?x10739 11)))
(assert
 (let ((?x17869 (+ (ite (and (<= 4_y 12) (>= (+ 4_y 3) 12)) 5 0))))
 (<= ?x17869 11)))
(assert
 (let ((?x16169 (+ (ite (and (<= 5_y 12) (>= (+ 5_y 4) 12)) 5 0))))
 (<= ?x16169 11)))
(assert
 (let ((?x16710 (+ (ite (and (<= 6_y 12) (>= (+ 6_y 4) 12)) 8 0))))
 (<= ?x16710 11)))
(assert
 (let ((?x7122 (+ (ite (and (<= 0_y 13) (>= (+ 0_y 3) 13)) 3 0))))
 (<= ?x7122 11)))
(assert
 (let ((?x28665 (+ (ite (and (<= 1_y 13) (>= (+ 1_y 4) 13)) 3 0))))
 (<= ?x28665 11)))
(assert
 (let ((?x25712 (+ (ite (and (<= 2_y 13) (>= (+ 2_y 5) 13)) 3 0))))
 (<= ?x25712 11)))
(assert
 (let ((?x12231 (+ (ite (and (<= 3_y 13) (>= (+ 3_y 6) 13)) 3 0))))
 (<= ?x12231 11)))
(assert
 (let ((?x20696 (+ (ite (and (<= 4_y 13) (>= (+ 4_y 3) 13)) 5 0))))
 (<= ?x20696 11)))
(assert
 (let ((?x9557 (+ (ite (and (<= 5_y 13) (>= (+ 5_y 4) 13)) 5 0))))
 (<= ?x9557 11)))
(assert
 (let ((?x18327 (+ (ite (and (<= 6_y 13) (>= (+ 6_y 4) 13)) 8 0))))
 (<= ?x18327 11)))
(assert
 (let ((?x7188 (+ (ite (and (<= 0_y 14) (>= (+ 0_y 3) 14)) 3 0))))
 (<= ?x7188 11)))
(assert
 (let ((?x2408 (+ (ite (and (<= 1_y 14) (>= (+ 1_y 4) 14)) 3 0))))
 (<= ?x2408 11)))
(assert
 (let ((?x12970 (+ (ite (and (<= 2_y 14) (>= (+ 2_y 5) 14)) 3 0))))
 (<= ?x12970 11)))
(assert
 (let ((?x2204 (+ (ite (and (<= 3_y 14) (>= (+ 3_y 6) 14)) 3 0))))
 (<= ?x2204 11)))
(assert
 (let ((?x23650 (+ (ite (and (<= 4_y 14) (>= (+ 4_y 3) 14)) 5 0))))
 (<= ?x23650 11)))
(assert
 (let ((?x22314 (+ (ite (and (<= 5_y 14) (>= (+ 5_y 4) 14)) 5 0))))
 (<= ?x22314 11)))
(assert
 (let ((?x21672 (+ (ite (and (<= 6_y 14) (>= (+ 6_y 4) 14)) 8 0))))
 (<= ?x21672 11)))
(assert
 (let ((?x4989 (+ (ite (and (<= 0_y 15) (>= (+ 0_y 3) 15)) 3 0))))
 (<= ?x4989 11)))
(assert
 (let ((?x2766 (+ (ite (and (<= 1_y 15) (>= (+ 1_y 4) 15)) 3 0))))
 (<= ?x2766 11)))
(assert
 (let ((?x1410 (+ (ite (and (<= 2_y 15) (>= (+ 2_y 5) 15)) 3 0))))
 (<= ?x1410 11)))
(assert
 (let ((?x8491 (+ (ite (and (<= 3_y 15) (>= (+ 3_y 6) 15)) 3 0))))
 (<= ?x8491 11)))
(assert
 (let ((?x19041 (+ (ite (and (<= 4_y 15) (>= (+ 4_y 3) 15)) 5 0))))
 (<= ?x19041 11)))
(assert
 (let ((?x3692 (+ (ite (and (<= 5_y 15) (>= (+ 5_y 4) 15)) 5 0))))
 (<= ?x3692 11)))
(assert
 (let ((?x8739 (+ (ite (and (<= 6_y 15) (>= (+ 6_y 4) 15)) 8 0))))
 (<= ?x8739 11)))
(assert
 (let ((?x13486 (+ (ite (and (<= 0_x 0) (>= (+ 0_x 3) 0)) 3 0))))
 (<= ?x13486 makespan)))
(assert
 (let ((?x10304 (+ (ite (and (<= 1_x 0) (>= (+ 1_x 3) 0)) 4 0))))
 (<= ?x10304 makespan)))
(assert
 (let ((?x7700 (+ (ite (and (<= 2_x 0) (>= (+ 2_x 3) 0)) 5 0))))
 (<= ?x7700 makespan)))
(assert
 (let ((?x10384 (+ (ite (and (<= 3_x 0) (>= (+ 3_x 3) 0)) 6 0))))
 (<= ?x10384 makespan)))
(assert
 (let ((?x22687 (+ (ite (and (<= 4_x 0) (>= (+ 4_x 5) 0)) 3 0))))
 (<= ?x22687 makespan)))
(assert
 (let ((?x22960 (+ (ite (and (<= 5_x 0) (>= (+ 5_x 5) 0)) 4 0))))
 (<= ?x22960 makespan)))
(assert
 (let ((?x3211 (+ (ite (and (<= 6_x 0) (>= (+ 6_x 8) 0)) 4 0))))
 (<= ?x3211 makespan)))
(assert
 (let ((?x1760 (+ (ite (and (<= 0_x 1) (>= (+ 0_x 3) 1)) 3 0))))
 (<= ?x1760 makespan)))
(assert
 (let ((?x3794 (+ (ite (and (<= 1_x 1) (>= (+ 1_x 3) 1)) 4 0))))
 (<= ?x3794 makespan)))
(assert
 (let ((?x205 (+ (ite (and (<= 2_x 1) (>= (+ 2_x 3) 1)) 5 0))))
 (<= ?x205 makespan)))
(assert
 (let ((?x4314 (+ (ite (and (<= 3_x 1) (>= (+ 3_x 3) 1)) 6 0))))
 (<= ?x4314 makespan)))
(assert
 (let ((?x10652 (+ (ite (and (<= 4_x 1) (>= (+ 4_x 5) 1)) 3 0))))
 (<= ?x10652 makespan)))
(assert
 (let ((?x15084 (+ (ite (and (<= 5_x 1) (>= (+ 5_x 5) 1)) 4 0))))
 (<= ?x15084 makespan)))
(assert
 (let ((?x7784 (+ (ite (and (<= 6_x 1) (>= (+ 6_x 8) 1)) 4 0))))
 (<= ?x7784 makespan)))
(assert
 (let ((?x10998 (+ (ite (and (<= 0_x 2) (>= (+ 0_x 3) 2)) 3 0))))
 (<= ?x10998 makespan)))
(assert
 (let ((?x21858 (+ (ite (and (<= 1_x 2) (>= (+ 1_x 3) 2)) 4 0))))
 (<= ?x21858 makespan)))
(assert
 (let ((?x13697 (+ (ite (and (<= 2_x 2) (>= (+ 2_x 3) 2)) 5 0))))
 (<= ?x13697 makespan)))
(assert
 (let ((?x11978 (+ (ite (and (<= 3_x 2) (>= (+ 3_x 3) 2)) 6 0))))
 (<= ?x11978 makespan)))
(assert
 (let ((?x16621 (+ (ite (and (<= 4_x 2) (>= (+ 4_x 5) 2)) 3 0))))
 (<= ?x16621 makespan)))
(assert
 (let ((?x7112 (+ (ite (and (<= 5_x 2) (>= (+ 5_x 5) 2)) 4 0))))
 (<= ?x7112 makespan)))
(assert
 (let ((?x22814 (+ (ite (and (<= 6_x 2) (>= (+ 6_x 8) 2)) 4 0))))
 (<= ?x22814 makespan)))
(assert
 (let ((?x7407 (+ (ite (and (<= 0_x 3) (>= (+ 0_x 3) 3)) 3 0))))
 (<= ?x7407 makespan)))
(assert
 (let ((?x23630 (+ (ite (and (<= 1_x 3) (>= (+ 1_x 3) 3)) 4 0))))
 (<= ?x23630 makespan)))
(assert
 (let ((?x15407 (+ (ite (and (<= 2_x 3) (>= (+ 2_x 3) 3)) 5 0))))
 (<= ?x15407 makespan)))
(assert
 (let ((?x324 (+ (ite (and (<= 3_x 3) (>= (+ 3_x 3) 3)) 6 0))))
 (<= ?x324 makespan)))
(assert
 (let ((?x14525 (+ (ite (and (<= 4_x 3) (>= (+ 4_x 5) 3)) 3 0))))
 (<= ?x14525 makespan)))
(assert
 (let ((?x12934 (+ (ite (and (<= 5_x 3) (>= (+ 5_x 5) 3)) 4 0))))
 (<= ?x12934 makespan)))
(assert
 (let ((?x17922 (+ (ite (and (<= 6_x 3) (>= (+ 6_x 8) 3)) 4 0))))
 (<= ?x17922 makespan)))
(assert
 (let ((?x23155 (+ (ite (and (<= 0_x 4) (>= (+ 0_x 3) 4)) 3 0))))
 (<= ?x23155 makespan)))
(assert
 (let ((?x16252 (+ (ite (and (<= 1_x 4) (>= (+ 1_x 3) 4)) 4 0))))
 (<= ?x16252 makespan)))
(assert
 (let ((?x17969 (+ (ite (and (<= 2_x 4) (>= (+ 2_x 3) 4)) 5 0))))
 (<= ?x17969 makespan)))
(assert
 (let ((?x11938 (+ (ite (and (<= 3_x 4) (>= (+ 3_x 3) 4)) 6 0))))
 (<= ?x11938 makespan)))
(assert
 (let ((?x24268 (+ (ite (and (<= 4_x 4) (>= (+ 4_x 5) 4)) 3 0))))
 (<= ?x24268 makespan)))
(assert
 (let ((?x24931 (+ (ite (and (<= 5_x 4) (>= (+ 5_x 5) 4)) 4 0))))
 (<= ?x24931 makespan)))
(assert
 (let ((?x25491 (+ (ite (and (<= 6_x 4) (>= (+ 6_x 8) 4)) 4 0))))
 (<= ?x25491 makespan)))
(assert
 (let ((?x25180 (+ (ite (and (<= 0_x 5) (>= (+ 0_x 3) 5)) 3 0))))
 (<= ?x25180 makespan)))
(assert
 (let ((?x24779 (+ (ite (and (<= 1_x 5) (>= (+ 1_x 3) 5)) 4 0))))
 (<= ?x24779 makespan)))
(assert
 (let ((?x24397 (+ (ite (and (<= 2_x 5) (>= (+ 2_x 3) 5)) 5 0))))
 (<= ?x24397 makespan)))
(assert
 (let ((?x24013 (+ (ite (and (<= 3_x 5) (>= (+ 3_x 3) 5)) 6 0))))
 (<= ?x24013 makespan)))
(assert
 (let ((?x2589 (+ (ite (and (<= 4_x 5) (>= (+ 4_x 5) 5)) 3 0))))
 (<= ?x2589 makespan)))
(assert
 (let ((?x6444 (+ (ite (and (<= 5_x 5) (>= (+ 5_x 5) 5)) 4 0))))
 (<= ?x6444 makespan)))
(assert
 (let ((?x18848 (+ (ite (and (<= 6_x 5) (>= (+ 6_x 8) 5)) 4 0))))
 (<= ?x18848 makespan)))
(assert
 (let ((?x6723 (+ (ite (and (<= 0_x 6) (>= (+ 0_x 3) 6)) 3 0))))
 (<= ?x6723 makespan)))
(assert
 (let ((?x15811 (+ (ite (and (<= 1_x 6) (>= (+ 1_x 3) 6)) 4 0))))
 (<= ?x15811 makespan)))
(assert
 (let ((?x6577 (+ (ite (and (<= 2_x 6) (>= (+ 2_x 3) 6)) 5 0))))
 (<= ?x6577 makespan)))
(assert
 (let ((?x15236 (+ (ite (and (<= 3_x 6) (>= (+ 3_x 3) 6)) 6 0))))
 (<= ?x15236 makespan)))
(assert
 (let ((?x23404 (+ (ite (and (<= 4_x 6) (>= (+ 4_x 5) 6)) 3 0))))
 (<= ?x23404 makespan)))
(assert
 (let ((?x22869 (+ (ite (and (<= 5_x 6) (>= (+ 5_x 5) 6)) 4 0))))
 (<= ?x22869 makespan)))
(assert
 (let ((?x4260 (+ (ite (and (<= 6_x 6) (>= (+ 6_x 8) 6)) 4 0))))
 (<= ?x4260 makespan)))
(assert
 (let ((?x14214 (+ (ite (and (<= 0_x 7) (>= (+ 0_x 3) 7)) 3 0))))
 (<= ?x14214 makespan)))
(assert
 (let ((?x22281 (+ (ite (and (<= 1_x 7) (>= (+ 1_x 3) 7)) 4 0))))
 (<= ?x22281 makespan)))
(assert
 (let ((?x14239 (+ (ite (and (<= 2_x 7) (>= (+ 2_x 3) 7)) 5 0))))
 (<= ?x14239 makespan)))
(assert
 (let ((?x18841 (+ (ite (and (<= 3_x 7) (>= (+ 3_x 3) 7)) 6 0))))
 (<= ?x18841 makespan)))
(assert
 (let ((?x8051 (+ (ite (and (<= 4_x 7) (>= (+ 4_x 5) 7)) 3 0))))
 (<= ?x8051 makespan)))
(assert
 (let ((?x3351 (+ (ite (and (<= 5_x 7) (>= (+ 5_x 5) 7)) 4 0))))
 (<= ?x3351 makespan)))
(assert
 (let ((?x12067 (+ (ite (and (<= 6_x 7) (>= (+ 6_x 8) 7)) 4 0))))
 (<= ?x12067 makespan)))
(assert
 (let ((?x19601 (+ (ite (and (<= 0_x 8) (>= (+ 0_x 3) 8)) 3 0))))
 (<= ?x19601 makespan)))
(assert
 (let ((?x9376 (+ (ite (and (<= 1_x 8) (>= (+ 1_x 3) 8)) 4 0))))
 (<= ?x9376 makespan)))
(assert
 (let ((?x12028 (+ (ite (and (<= 2_x 8) (>= (+ 2_x 3) 8)) 5 0))))
 (<= ?x12028 makespan)))
(assert
 (let ((?x7281 (+ (ite (and (<= 3_x 8) (>= (+ 3_x 3) 8)) 6 0))))
 (<= ?x7281 makespan)))
(assert
 (let ((?x21929 (+ (ite (and (<= 4_x 8) (>= (+ 4_x 5) 8)) 3 0))))
 (<= ?x21929 makespan)))
(assert
 (let ((?x11193 (+ (ite (and (<= 5_x 8) (>= (+ 5_x 5) 8)) 4 0))))
 (<= ?x11193 makespan)))
(assert
 (let ((?x19190 (+ (ite (and (<= 6_x 8) (>= (+ 6_x 8) 8)) 4 0))))
 (<= ?x19190 makespan)))
(assert
 (let ((?x317 (+ (ite (and (<= 0_x 9) (>= (+ 0_x 3) 9)) 3 0))))
 (<= ?x317 makespan)))
(assert
 (let ((?x13453 (+ (ite (and (<= 1_x 9) (>= (+ 1_x 3) 9)) 4 0))))
 (<= ?x13453 makespan)))
(assert
 (let ((?x9703 (+ (ite (and (<= 2_x 9) (>= (+ 2_x 3) 9)) 5 0))))
 (<= ?x9703 makespan)))
(assert
 (let ((?x12850 (+ (ite (and (<= 3_x 9) (>= (+ 3_x 3) 9)) 6 0))))
 (<= ?x12850 makespan)))
(assert
 (let ((?x21296 (+ (ite (and (<= 4_x 9) (>= (+ 4_x 5) 9)) 3 0))))
 (<= ?x21296 makespan)))
(assert
 (let ((?x12249 (+ (ite (and (<= 5_x 9) (>= (+ 5_x 5) 9)) 4 0))))
 (<= ?x12249 makespan)))
(assert
 (let ((?x16244 (+ (ite (and (<= 6_x 9) (>= (+ 6_x 8) 9)) 4 0))))
 (<= ?x16244 makespan)))
(assert
 (let ((?x15405 (+ (ite (and (<= 0_x 10) (>= (+ 0_x 3) 10)) 3 0))))
 (<= ?x15405 makespan)))
(assert
 (let ((?x21556 (+ (ite (and (<= 1_x 10) (>= (+ 1_x 3) 10)) 4 0))))
 (<= ?x21556 makespan)))
(assert
 (let ((?x1374 (+ (ite (and (<= 2_x 10) (>= (+ 2_x 3) 10)) 5 0))))
 (<= ?x1374 makespan)))
(assert
 (let ((?x9031 (+ (ite (and (<= 3_x 10) (>= (+ 3_x 3) 10)) 6 0))))
 (<= ?x9031 makespan)))
(assert
 (let ((?x2486 (+ (ite (and (<= 4_x 10) (>= (+ 4_x 5) 10)) 3 0))))
 (<= ?x2486 makespan)))
(assert
 (let ((?x18818 (+ (ite (and (<= 5_x 10) (>= (+ 5_x 5) 10)) 4 0))))
 (<= ?x18818 makespan)))
(assert
 (let ((?x16168 (+ (ite (and (<= 6_x 10) (>= (+ 6_x 8) 10)) 4 0))))
 (<= ?x16168 makespan)))
(check-sat)
