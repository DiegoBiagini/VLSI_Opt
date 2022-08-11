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
(assert
 (>= makespan 9))
(assert
 (<= makespan 14))
(assert
 (let ((?x16080 (+ 0_y 3)))
 (<= ?x16080 makespan)))
(assert
 (let ((?x16082 (+ 0_x 3)))
 (<= ?x16082 9)))
(assert
 (>= 0_x 0))
(assert
 (<= 0_y 11))
(assert
 (>= 0_y 0))
(assert
 (let ((?x8790 (+ 1_y 4)))
 (<= ?x8790 makespan)))
(assert
 (let ((?x12785 (+ 1_x 3)))
 (<= ?x12785 9)))
(assert
 (>= 1_x 0))
(assert
 (<= 1_y 10))
(assert
 (>= 1_y 0))
(assert
 (let ((?x16044 (+ 2_y 5)))
 (<= ?x16044 makespan)))
(assert
 (let ((?x16046 (+ 2_x 3)))
 (<= ?x16046 9)))
(assert
 (>= 2_x 0))
(assert
 (<= 2_y 9))
(assert
 (>= 2_y 0))
(assert
 (let ((?x16035 (+ 3_y 6)))
 (<= ?x16035 makespan)))
(assert
 (let ((?x8153 (+ 3_x 3)))
 (<= ?x8153 9)))
(assert
 (>= 3_x 0))
(assert
 (<= 3_y 8))
(assert
 (>= 3_y 0))
(assert
 (let ((?x1007 (+ 4_y 9)))
 (<= ?x1007 makespan)))
(assert
 (let ((?x12885 (+ 4_x 3)))
 (<= ?x12885 9)))
(assert
 (>= 4_x 0))
(assert
 (<= 4_y 5))
(assert
 (>= 4_y 0))
(assert
 (or (<= (+ 0_x 3) 1_x) (<= (+ 0_y 3) 1_y) (<= (+ 1_x 3) 0_x) (<= (+ 1_y 4) 0_y)))
(assert
 (or (<= (+ 0_x 3) 2_x) (<= (+ 0_y 3) 2_y) (<= (+ 2_x 3) 0_x) (<= (+ 2_y 5) 0_y)))
(assert
 (or (<= (+ 0_x 3) 3_x) (<= (+ 0_y 3) 3_y) (<= (+ 3_x 3) 0_x) (<= (+ 3_y 6) 0_y)))
(assert
 (or (<= (+ 0_x 3) 4_x) (<= (+ 0_y 3) 4_y) (<= (+ 4_x 3) 0_x) (<= (+ 4_y 9) 0_y)))
(assert
 (or (<= (+ 1_x 3) 2_x) (<= (+ 1_y 4) 2_y) (<= (+ 2_x 3) 1_x) (<= (+ 2_y 5) 1_y)))
(assert
 (or (<= (+ 1_x 3) 3_x) (<= (+ 1_y 4) 3_y) (<= (+ 3_x 3) 1_x) (<= (+ 3_y 6) 1_y)))
(assert
 (or (<= (+ 1_x 3) 4_x) (<= (+ 1_y 4) 4_y) (<= (+ 4_x 3) 1_x) (<= (+ 4_y 9) 1_y)))
(assert
 (or (<= (+ 2_x 3) 3_x) (<= (+ 2_y 5) 3_y) (<= (+ 3_x 3) 2_x) (<= (+ 3_y 6) 2_y)))
(assert
 (or (<= (+ 2_x 3) 4_x) (<= (+ 2_y 5) 4_y) (<= (+ 4_x 3) 2_x) (<= (+ 4_y 9) 2_y)))
(assert
 (or (<= (+ 3_x 3) 4_x) (<= (+ 3_y 6) 4_y) (<= (+ 4_x 3) 3_x) (<= (+ 4_y 9) 3_y)))
(assert
 (let ((?x15755 (+ (ite (and (<= 0_y 0) (>= (+ 0_y 3) 0)) 3 0))))
 (<= ?x15755 9)))
(assert
 (let ((?x15747 (+ (ite (and (<= 1_y 0) (>= (+ 1_y 4) 0)) 3 0))))
 (<= ?x15747 9)))
(assert
 (let ((?x15720 (+ (ite (and (<= 2_y 0) (>= (+ 2_y 5) 0)) 3 0))))
 (<= ?x15720 9)))
(assert
 (let ((?x15711 (+ (ite (and (<= 3_y 0) (>= (+ 3_y 6) 0)) 3 0))))
 (<= ?x15711 9)))
(assert
 (let ((?x15684 (+ (ite (and (<= 4_y 0) (>= (+ 4_y 9) 0)) 3 0))))
 (<= ?x15684 9)))
(assert
 (let ((?x15676 (+ (ite (and (<= 0_y 1) (>= (+ 0_y 3) 1)) 3 0))))
 (<= ?x15676 9)))
(assert
 (let ((?x15650 (+ (ite (and (<= 1_y 1) (>= (+ 1_y 4) 1)) 3 0))))
 (<= ?x15650 9)))
(assert
 (let ((?x15623 (+ (ite (and (<= 2_y 1) (>= (+ 2_y 5) 1)) 3 0))))
 (<= ?x15623 9)))
(assert
 (let ((?x15614 (+ (ite (and (<= 3_y 1) (>= (+ 3_y 6) 1)) 3 0))))
 (<= ?x15614 9)))
(assert
 (let ((?x15587 (+ (ite (and (<= 4_y 1) (>= (+ 4_y 9) 1)) 3 0))))
 (<= ?x15587 9)))
(assert
 (let ((?x15578 (+ (ite (and (<= 0_y 2) (>= (+ 0_y 3) 2)) 3 0))))
 (<= ?x15578 9)))
(assert
 (let ((?x15551 (+ (ite (and (<= 1_y 2) (>= (+ 1_y 4) 2)) 3 0))))
 (<= ?x15551 9)))
(assert
 (let ((?x15542 (+ (ite (and (<= 2_y 2) (>= (+ 2_y 5) 2)) 3 0))))
 (<= ?x15542 9)))
(assert
 (let ((?x15515 (+ (ite (and (<= 3_y 2) (>= (+ 3_y 6) 2)) 3 0))))
 (<= ?x15515 9)))
(assert
 (let ((?x15506 (+ (ite (and (<= 4_y 2) (>= (+ 4_y 9) 2)) 3 0))))
 (<= ?x15506 9)))
(assert
 (let ((?x15481 (+ (ite (and (<= 0_y 3) (>= (+ 0_y 3) 3)) 3 0))))
 (<= ?x15481 9)))
(assert
 (let ((?x15472 (+ (ite (and (<= 1_y 3) (>= (+ 1_y 4) 3)) 3 0))))
 (<= ?x15472 9)))
(assert
 (let ((?x12928 (+ (ite (and (<= 2_y 3) (>= (+ 2_y 5) 3)) 3 0))))
 (<= ?x12928 9)))
(assert
 (let ((?x15439 (+ (ite (and (<= 3_y 3) (>= (+ 3_y 6) 3)) 3 0))))
 (<= ?x15439 9)))
(assert
 (let ((?x13004 (+ (ite (and (<= 4_y 3) (>= (+ 4_y 9) 3)) 3 0))))
 (<= ?x13004 9)))
(assert
 (let ((?x15406 (+ (ite (and (<= 0_y 4) (>= (+ 0_y 3) 4)) 3 0))))
 (<= ?x15406 9)))
(assert
 (let ((?x13064 (+ (ite (and (<= 1_y 4) (>= (+ 1_y 4) 4)) 3 0))))
 (<= ?x13064 9)))
(assert
 (let ((?x15372 (+ (ite (and (<= 2_y 4) (>= (+ 2_y 5) 4)) 3 0))))
 (<= ?x15372 9)))
(assert
 (let ((?x15364 (+ (ite (and (<= 3_y 4) (>= (+ 3_y 6) 4)) 3 0))))
 (<= ?x15364 9)))
(assert
 (let ((?x15339 (+ (ite (and (<= 4_y 4) (>= (+ 4_y 9) 4)) 3 0))))
 (<= ?x15339 9)))
(assert
 (let ((?x15330 (+ (ite (and (<= 0_y 5) (>= (+ 0_y 3) 5)) 3 0))))
 (<= ?x15330 9)))
(assert
 (let ((?x15305 (+ (ite (and (<= 1_y 5) (>= (+ 1_y 4) 5)) 3 0))))
 (<= ?x15305 9)))
(assert
 (let ((?x15297 (+ (ite (and (<= 2_y 5) (>= (+ 2_y 5) 5)) 3 0))))
 (<= ?x15297 9)))
(assert
 (let ((?x12798 (+ (ite (and (<= 3_y 5) (>= (+ 3_y 6) 5)) 3 0))))
 (<= ?x12798 9)))
(assert
 (let ((?x15262 (+ (ite (and (<= 4_y 5) (>= (+ 4_y 9) 5)) 3 0))))
 (<= ?x15262 9)))
(assert
 (let ((?x15254 (+ (ite (and (<= 0_y 6) (>= (+ 0_y 3) 6)) 3 0))))
 (<= ?x15254 9)))
(assert
 (let ((?x15227 (+ (ite (and (<= 1_y 6) (>= (+ 1_y 4) 6)) 3 0))))
 (<= ?x15227 9)))
(assert
 (let ((?x15218 (+ (ite (and (<= 2_y 6) (>= (+ 2_y 5) 6)) 3 0))))
 (<= ?x15218 9)))
(assert
 (let ((?x15191 (+ (ite (and (<= 3_y 6) (>= (+ 3_y 6) 6)) 3 0))))
 (<= ?x15191 9)))
(assert
 (let ((?x15181 (+ (ite (and (<= 4_y 6) (>= (+ 4_y 9) 6)) 3 0))))
 (<= ?x15181 9)))
(assert
 (let ((?x15154 (+ (ite (and (<= 0_y 7) (>= (+ 0_y 3) 7)) 3 0))))
 (<= ?x15154 9)))
(assert
 (let ((?x15145 (+ (ite (and (<= 1_y 7) (>= (+ 1_y 4) 7)) 3 0))))
 (<= ?x15145 9)))
(assert
 (let ((?x15118 (+ (ite (and (<= 2_y 7) (>= (+ 2_y 5) 7)) 3 0))))
 (<= ?x15118 9)))
(assert
 (let ((?x15109 (+ (ite (and (<= 3_y 7) (>= (+ 3_y 6) 7)) 3 0))))
 (<= ?x15109 9)))
(assert
 (let ((?x15082 (+ (ite (and (<= 4_y 7) (>= (+ 4_y 9) 7)) 3 0))))
 (<= ?x15082 9)))
(assert
 (let ((?x15072 (+ (ite (and (<= 0_y 8) (>= (+ 0_y 3) 8)) 3 0))))
 (<= ?x15072 9)))
(assert
 (let ((?x15045 (+ (ite (and (<= 1_y 8) (>= (+ 1_y 4) 8)) 3 0))))
 (<= ?x15045 9)))
(assert
 (let ((?x15036 (+ (ite (and (<= 2_y 8) (>= (+ 2_y 5) 8)) 3 0))))
 (<= ?x15036 9)))
(assert
 (let ((?x15026 (+ (ite (and (<= 3_y 8) (>= (+ 3_y 6) 8)) 3 0))))
 (<= ?x15026 9)))
(assert
 (let ((?x14999 (+ (ite (and (<= 4_y 8) (>= (+ 4_y 9) 8)) 3 0))))
 (<= ?x14999 9)))
(assert
 (let ((?x14990 (+ (ite (and (<= 0_y 9) (>= (+ 0_y 3) 9)) 3 0))))
 (<= ?x14990 9)))
(assert
 (let ((?x14963 (+ (ite (and (<= 1_y 9) (>= (+ 1_y 4) 9)) 3 0))))
 (<= ?x14963 9)))
(assert
 (let ((?x14953 (+ (ite (and (<= 2_y 9) (>= (+ 2_y 5) 9)) 3 0))))
 (<= ?x14953 9)))
(assert
 (let ((?x14926 (+ (ite (and (<= 3_y 9) (>= (+ 3_y 6) 9)) 3 0))))
 (<= ?x14926 9)))
(assert
 (let ((?x14917 (+ (ite (and (<= 4_y 9) (>= (+ 4_y 9) 9)) 3 0))))
 (<= ?x14917 9)))
(assert
 (let ((?x14889 (+ (ite (and (<= 0_y 10) (>= (+ 0_y 3) 10)) 3 0))))
 (<= ?x14889 9)))
(assert
 (let ((?x14879 (+ (ite (and (<= 1_y 10) (>= (+ 1_y 4) 10)) 3 0))))
 (<= ?x14879 9)))
(assert
 (let ((?x14870 (+ (ite (and (<= 2_y 10) (>= (+ 2_y 5) 10)) 3 0))))
 (<= ?x14870 9)))
(assert
 (let ((?x14843 (+ (ite (and (<= 3_y 10) (>= (+ 3_y 6) 10)) 3 0))))
 (<= ?x14843 9)))
(assert
 (let ((?x14834 (+ (ite (and (<= 4_y 10) (>= (+ 4_y 9) 10)) 3 0))))
 (<= ?x14834 9)))
(assert
 (let ((?x14805 (+ (ite (and (<= 0_y 11) (>= (+ 0_y 3) 11)) 3 0))))
 (<= ?x14805 9)))
(assert
 (let ((?x14796 (+ (ite (and (<= 1_y 11) (>= (+ 1_y 4) 11)) 3 0))))
 (<= ?x14796 9)))
(assert
 (let ((?x14769 (+ (ite (and (<= 2_y 11) (>= (+ 2_y 5) 11)) 3 0))))
 (<= ?x14769 9)))
(assert
 (let ((?x14760 (+ (ite (and (<= 3_y 11) (>= (+ 3_y 6) 11)) 3 0))))
 (<= ?x14760 9)))
(assert
 (let ((?x14733 (+ (ite (and (<= 4_y 11) (>= (+ 4_y 9) 11)) 3 0))))
 (<= ?x14733 9)))
(assert
 (let ((?x14724 (+ (ite (and (<= 0_y 12) (>= (+ 0_y 3) 12)) 3 0))))
 (<= ?x14724 9)))
(assert
 (let ((?x14697 (+ (ite (and (<= 1_y 12) (>= (+ 1_y 4) 12)) 3 0))))
 (<= ?x14697 9)))
(assert
 (let ((?x14688 (+ (ite (and (<= 2_y 12) (>= (+ 2_y 5) 12)) 3 0))))
 (<= ?x14688 9)))
(assert
 (let ((?x14661 (+ (ite (and (<= 3_y 12) (>= (+ 3_y 6) 12)) 3 0))))
 (<= ?x14661 9)))
(assert
 (let ((?x14652 (+ (ite (and (<= 4_y 12) (>= (+ 4_y 9) 12)) 3 0))))
 (<= ?x14652 9)))
(assert
 (let ((?x14625 (+ (ite (and (<= 0_y 13) (>= (+ 0_y 3) 13)) 3 0))))
 (<= ?x14625 9)))
(assert
 (let ((?x14616 (+ (ite (and (<= 1_y 13) (>= (+ 1_y 4) 13)) 3 0))))
 (<= ?x14616 9)))
(assert
 (let ((?x14589 (+ (ite (and (<= 2_y 13) (>= (+ 2_y 5) 13)) 3 0))))
 (<= ?x14589 9)))
(assert
 (let ((?x14580 (+ (ite (and (<= 3_y 13) (>= (+ 3_y 6) 13)) 3 0))))
 (<= ?x14580 9)))
(assert
 (let ((?x14553 (+ (ite (and (<= 4_y 13) (>= (+ 4_y 9) 13)) 3 0))))
 (<= ?x14553 9)))
(assert
 (let ((?x14544 (+ (ite (and (<= 0_x 0) (>= (+ 0_x 3) 0)) 3 0))))
 (<= ?x14544 makespan)))
(assert
 (let ((?x14520 (+ (ite (and (<= 1_x 0) (>= (+ 1_x 3) 0)) 4 0))))
 (<= ?x14520 makespan)))
(assert
 (let ((?x14496 (+ (ite (and (<= 2_x 0) (>= (+ 2_x 3) 0)) 5 0))))
 (<= ?x14496 makespan)))
(assert
 (let ((?x14472 (+ (ite (and (<= 3_x 0) (>= (+ 3_x 3) 0)) 6 0))))
 (<= ?x14472 makespan)))
(assert
 (let ((?x14448 (+ (ite (and (<= 4_x 0) (>= (+ 4_x 3) 0)) 9 0))))
 (<= ?x14448 makespan)))
(assert
 (let ((?x14424 (+ (ite (and (<= 0_x 1) (>= (+ 0_x 3) 1)) 3 0))))
 (<= ?x14424 makespan)))
(assert
 (let ((?x14400 (+ (ite (and (<= 1_x 1) (>= (+ 1_x 3) 1)) 4 0))))
 (<= ?x14400 makespan)))
(assert
 (let ((?x14376 (+ (ite (and (<= 2_x 1) (>= (+ 2_x 3) 1)) 5 0))))
 (<= ?x14376 makespan)))
(assert
 (let ((?x14352 (+ (ite (and (<= 3_x 1) (>= (+ 3_x 3) 1)) 6 0))))
 (<= ?x14352 makespan)))
(assert
 (let ((?x14328 (+ (ite (and (<= 4_x 1) (>= (+ 4_x 3) 1)) 9 0))))
 (<= ?x14328 makespan)))
(assert
 (let ((?x14304 (+ (ite (and (<= 0_x 2) (>= (+ 0_x 3) 2)) 3 0))))
 (<= ?x14304 makespan)))
(assert
 (let ((?x14279 (+ (ite (and (<= 1_x 2) (>= (+ 1_x 3) 2)) 4 0))))
 (<= ?x14279 makespan)))
(assert
 (let ((?x14255 (+ (ite (and (<= 2_x 2) (>= (+ 2_x 3) 2)) 5 0))))
 (<= ?x14255 makespan)))
(assert
 (let ((?x14231 (+ (ite (and (<= 3_x 2) (>= (+ 3_x 3) 2)) 6 0))))
 (<= ?x14231 makespan)))
(assert
 (let ((?x14207 (+ (ite (and (<= 4_x 2) (>= (+ 4_x 3) 2)) 9 0))))
 (<= ?x14207 makespan)))
(assert
 (let ((?x14183 (+ (ite (and (<= 0_x 3) (>= (+ 0_x 3) 3)) 3 0))))
 (<= ?x14183 makespan)))
(assert
 (let ((?x14158 (+ (ite (and (<= 1_x 3) (>= (+ 1_x 3) 3)) 4 0))))
 (<= ?x14158 makespan)))
(assert
 (let ((?x14133 (+ (ite (and (<= 2_x 3) (>= (+ 2_x 3) 3)) 5 0))))
 (<= ?x14133 makespan)))
(assert
 (let ((?x14126 (+ (ite (and (<= 3_x 3) (>= (+ 3_x 3) 3)) 6 0))))
 (<= ?x14126 makespan)))
(assert
 (let ((?x14101 (+ (ite (and (<= 4_x 3) (>= (+ 4_x 3) 3)) 9 0))))
 (<= ?x14101 makespan)))
(assert
 (let ((?x14076 (+ (ite (and (<= 0_x 4) (>= (+ 0_x 3) 4)) 3 0))))
 (<= ?x14076 makespan)))
(assert
 (let ((?x14052 (+ (ite (and (<= 1_x 4) (>= (+ 1_x 3) 4)) 4 0))))
 (<= ?x14052 makespan)))
(assert
 (let ((?x14028 (+ (ite (and (<= 2_x 4) (>= (+ 2_x 3) 4)) 5 0))))
 (<= ?x14028 makespan)))
(assert
 (let ((?x14004 (+ (ite (and (<= 3_x 4) (>= (+ 3_x 3) 4)) 6 0))))
 (<= ?x14004 makespan)))
(assert
 (let ((?x13980 (+ (ite (and (<= 4_x 4) (>= (+ 4_x 3) 4)) 9 0))))
 (<= ?x13980 makespan)))
(assert
 (let ((?x13956 (+ (ite (and (<= 0_x 5) (>= (+ 0_x 3) 5)) 3 0))))
 (<= ?x13956 makespan)))
(assert
 (let ((?x13932 (+ (ite (and (<= 1_x 5) (>= (+ 1_x 3) 5)) 4 0))))
 (<= ?x13932 makespan)))
(assert
 (let ((?x13908 (+ (ite (and (<= 2_x 5) (>= (+ 2_x 3) 5)) 5 0))))
 (<= ?x13908 makespan)))
(assert
 (let ((?x13884 (+ (ite (and (<= 3_x 5) (>= (+ 3_x 3) 5)) 6 0))))
 (<= ?x13884 makespan)))
(assert
 (let ((?x13860 (+ (ite (and (<= 4_x 5) (>= (+ 4_x 3) 5)) 9 0))))
 (<= ?x13860 makespan)))
(assert
 (let ((?x13835 (+ (ite (and (<= 0_x 6) (>= (+ 0_x 3) 6)) 3 0))))
 (<= ?x13835 makespan)))
(assert
 (let ((?x13810 (+ (ite (and (<= 1_x 6) (>= (+ 1_x 3) 6)) 4 0))))
 (<= ?x13810 makespan)))
(assert
 (let ((?x13785 (+ (ite (and (<= 2_x 6) (>= (+ 2_x 3) 6)) 5 0))))
 (<= ?x13785 makespan)))
(assert
 (let ((?x13778 (+ (ite (and (<= 3_x 6) (>= (+ 3_x 3) 6)) 6 0))))
 (<= ?x13778 makespan)))
(assert
 (let ((?x13753 (+ (ite (and (<= 4_x 6) (>= (+ 4_x 3) 6)) 9 0))))
 (<= ?x13753 makespan)))
(assert
 (let ((?x13729 (+ (ite (and (<= 0_x 7) (>= (+ 0_x 3) 7)) 3 0))))
 (<= ?x13729 makespan)))
(assert
 (let ((?x13705 (+ (ite (and (<= 1_x 7) (>= (+ 1_x 3) 7)) 4 0))))
 (<= ?x13705 makespan)))
(assert
 (let ((?x13681 (+ (ite (and (<= 2_x 7) (>= (+ 2_x 3) 7)) 5 0))))
 (<= ?x13681 makespan)))
(assert
 (let ((?x13657 (+ (ite (and (<= 3_x 7) (>= (+ 3_x 3) 7)) 6 0))))
 (<= ?x13657 makespan)))
(assert
 (let ((?x13633 (+ (ite (and (<= 4_x 7) (>= (+ 4_x 3) 7)) 9 0))))
 (<= ?x13633 makespan)))
(assert
 (let ((?x13609 (+ (ite (and (<= 0_x 8) (>= (+ 0_x 3) 8)) 3 0))))
 (<= ?x13609 makespan)))
(assert
 (let ((?x13585 (+ (ite (and (<= 1_x 8) (>= (+ 1_x 3) 8)) 4 0))))
 (<= ?x13585 makespan)))
(assert
 (let ((?x13561 (+ (ite (and (<= 2_x 8) (>= (+ 2_x 3) 8)) 5 0))))
 (<= ?x13561 makespan)))
(assert
 (let ((?x13537 (+ (ite (and (<= 3_x 8) (>= (+ 3_x 3) 8)) 6 0))))
 (<= ?x13537 makespan)))
(assert
 (let ((?x13513 (+ (ite (and (<= 4_x 8) (>= (+ 4_x 3) 8)) 9 0))))
 (<= ?x13513 makespan)))
(check-sat)
