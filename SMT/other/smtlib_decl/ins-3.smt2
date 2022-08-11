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
(assert
 (>= makespan 10))
(assert
 (<= makespan 15))
(assert
 (let ((?x21719 (+ 0_y 3)))
 (<= ?x21719 makespan)))
(assert
 (let ((?x3438 (+ 0_x 3)))
 (<= ?x3438 10)))
(assert
 (>= 0_x 0))
(assert
 (<= 0_y 12))
(assert
 (>= 0_y 0))
(assert
 (let ((?x761 (+ 1_y 4)))
 (<= ?x761 makespan)))
(assert
 (let ((?x11110 (+ 1_x 3)))
 (<= ?x11110 10)))
(assert
 (>= 1_x 0))
(assert
 (<= 1_y 11))
(assert
 (>= 1_y 0))
(assert
 (let ((?x21910 (+ 2_y 6)))
 (<= ?x21910 makespan)))
(assert
 (let ((?x11018 (+ 2_x 3)))
 (<= ?x11018 10)))
(assert
 (>= 2_x 0))
(assert
 (<= 2_y 9))
(assert
 (>= 2_y 0))
(assert
 (let ((?x4649 (+ 3_y 7)))
 (<= ?x4649 makespan)))
(assert
 (let ((?x9902 (+ 3_x 3)))
 (<= ?x9902 10)))
(assert
 (>= 3_x 0))
(assert
 (<= 3_y 8))
(assert
 (>= 3_y 0))
(assert
 (let ((?x4598 (+ 4_y 4)))
 (<= ?x4598 makespan)))
(assert
 (let ((?x8109 (+ 4_x 4)))
 (<= ?x8109 10)))
(assert
 (>= 4_x 0))
(assert
 (<= 4_y 11))
(assert
 (>= 4_y 0))
(assert
 (let ((?x22246 (+ 5_y 6)))
 (<= ?x22246 makespan)))
(assert
 (let ((?x1387 (+ 5_x 4)))
 (<= ?x1387 10)))
(assert
 (>= 5_x 0))
(assert
 (<= 5_y 9))
(assert
 (>= 5_y 0))
(assert
 (or (<= (+ 0_x 3) 1_x) (<= (+ 0_y 3) 1_y) (<= (+ 1_x 3) 0_x) (<= (+ 1_y 4) 0_y)))
(assert
 (or (<= (+ 0_x 3) 2_x) (<= (+ 0_y 3) 2_y) (<= (+ 2_x 3) 0_x) (<= (+ 2_y 6) 0_y)))
(assert
 (or (<= (+ 0_x 3) 3_x) (<= (+ 0_y 3) 3_y) (<= (+ 3_x 3) 0_x) (<= (+ 3_y 7) 0_y)))
(assert
 (or (<= (+ 0_x 3) 4_x) (<= (+ 0_y 3) 4_y) (<= (+ 4_x 4) 0_x) (<= (+ 4_y 4) 0_y)))
(assert
 (or (<= (+ 0_x 3) 5_x) (<= (+ 0_y 3) 5_y) (<= (+ 5_x 4) 0_x) (<= (+ 5_y 6) 0_y)))
(assert
 (or (<= (+ 1_x 3) 2_x) (<= (+ 1_y 4) 2_y) (<= (+ 2_x 3) 1_x) (<= (+ 2_y 6) 1_y)))
(assert
 (or (<= (+ 1_x 3) 3_x) (<= (+ 1_y 4) 3_y) (<= (+ 3_x 3) 1_x) (<= (+ 3_y 7) 1_y)))
(assert
 (or (<= (+ 1_x 3) 4_x) (<= (+ 1_y 4) 4_y) (<= (+ 4_x 4) 1_x) (<= (+ 4_y 4) 1_y)))
(assert
 (or (<= (+ 1_x 3) 5_x) (<= (+ 1_y 4) 5_y) (<= (+ 5_x 4) 1_x) (<= (+ 5_y 6) 1_y)))
(assert
 (or (<= (+ 2_x 3) 3_x) (<= (+ 2_y 6) 3_y) (<= (+ 3_x 3) 2_x) (<= (+ 3_y 7) 2_y)))
(assert
 (or (<= (+ 2_x 3) 4_x) (<= (+ 2_y 6) 4_y) (<= (+ 4_x 4) 2_x) (<= (+ 4_y 4) 2_y)))
(assert
 (or (<= (+ 2_x 3) 5_x) (<= (+ 2_y 6) 5_y) (<= (+ 5_x 4) 2_x) (<= (+ 5_y 6) 2_y)))
(assert
 (or (<= (+ 3_x 3) 4_x) (<= (+ 3_y 7) 4_y) (<= (+ 4_x 4) 3_x) (<= (+ 4_y 4) 3_y)))
(assert
 (or (<= (+ 3_x 3) 5_x) (<= (+ 3_y 7) 5_y) (<= (+ 5_x 4) 3_x) (<= (+ 5_y 6) 3_y)))
(assert
 (or (<= (+ 4_x 4) 5_x) (<= (+ 4_y 4) 5_y) (<= (+ 5_x 4) 4_x) (<= (+ 5_y 6) 4_y)))
(assert
 (let ((?x1806 (+ (ite (and (<= 0_y 0) (>= (+ 0_y 3) 0)) 3 0))))
 (<= ?x1806 10)))
(assert
 (let ((?x5017 (+ (ite (and (<= 1_y 0) (>= (+ 1_y 4) 0)) 3 0))))
 (<= ?x5017 10)))
(assert
 (let ((?x16675 (+ (ite (and (<= 2_y 0) (>= (+ 2_y 6) 0)) 3 0))))
 (<= ?x16675 10)))
(assert
 (let ((?x11261 (+ (ite (and (<= 3_y 0) (>= (+ 3_y 7) 0)) 3 0))))
 (<= ?x11261 10)))
(assert
 (let ((?x17134 (+ (ite (and (<= 4_y 0) (>= (+ 4_y 4) 0)) 4 0))))
 (<= ?x17134 10)))
(assert
 (let ((?x3781 (+ (ite (and (<= 5_y 0) (>= (+ 5_y 6) 0)) 4 0))))
 (<= ?x3781 10)))
(assert
 (let ((?x13184 (+ (ite (and (<= 0_y 1) (>= (+ 0_y 3) 1)) 3 0))))
 (<= ?x13184 10)))
(assert
 (let ((?x14709 (+ (ite (and (<= 1_y 1) (>= (+ 1_y 4) 1)) 3 0))))
 (<= ?x14709 10)))
(assert
 (let ((?x12197 (+ (ite (and (<= 2_y 1) (>= (+ 2_y 6) 1)) 3 0))))
 (<= ?x12197 10)))
(assert
 (let ((?x13861 (+ (ite (and (<= 3_y 1) (>= (+ 3_y 7) 1)) 3 0))))
 (<= ?x13861 10)))
(assert
 (let ((?x3039 (+ (ite (and (<= 4_y 1) (>= (+ 4_y 4) 1)) 4 0))))
 (<= ?x3039 10)))
(assert
 (let ((?x266 (+ (ite (and (<= 5_y 1) (>= (+ 5_y 6) 1)) 4 0))))
 (<= ?x266 10)))
(assert
 (let ((?x10439 (+ (ite (and (<= 0_y 2) (>= (+ 0_y 3) 2)) 3 0))))
 (<= ?x10439 10)))
(assert
 (let ((?x13089 (+ (ite (and (<= 1_y 2) (>= (+ 1_y 4) 2)) 3 0))))
 (<= ?x13089 10)))
(assert
 (let ((?x17005 (+ (ite (and (<= 2_y 2) (>= (+ 2_y 6) 2)) 3 0))))
 (<= ?x17005 10)))
(assert
 (let ((?x19487 (+ (ite (and (<= 3_y 2) (>= (+ 3_y 7) 2)) 3 0))))
 (<= ?x19487 10)))
(assert
 (let ((?x18986 (+ (ite (and (<= 4_y 2) (>= (+ 4_y 4) 2)) 4 0))))
 (<= ?x18986 10)))
(assert
 (let ((?x18641 (+ (ite (and (<= 5_y 2) (>= (+ 5_y 6) 2)) 4 0))))
 (<= ?x18641 10)))
(assert
 (let ((?x18156 (+ (ite (and (<= 0_y 3) (>= (+ 0_y 3) 3)) 3 0))))
 (<= ?x18156 10)))
(assert
 (let ((?x17917 (+ (ite (and (<= 1_y 3) (>= (+ 1_y 4) 3)) 3 0))))
 (<= ?x17917 10)))
(assert
 (let ((?x3980 (+ (ite (and (<= 2_y 3) (>= (+ 2_y 6) 3)) 3 0))))
 (<= ?x3980 10)))
(assert
 (let ((?x3731 (+ (ite (and (<= 3_y 3) (>= (+ 3_y 7) 3)) 3 0))))
 (<= ?x3731 10)))
(assert
 (let ((?x21864 (+ (ite (and (<= 4_y 3) (>= (+ 4_y 4) 3)) 4 0))))
 (<= ?x21864 10)))
(assert
 (let ((?x2042 (+ (ite (and (<= 5_y 3) (>= (+ 5_y 6) 3)) 4 0))))
 (<= ?x2042 10)))
(assert
 (let ((?x14375 (+ (ite (and (<= 0_y 4) (>= (+ 0_y 3) 4)) 3 0))))
 (<= ?x14375 10)))
(assert
 (let ((?x8007 (+ (ite (and (<= 1_y 4) (>= (+ 1_y 4) 4)) 3 0))))
 (<= ?x8007 10)))
(assert
 (let ((?x712 (+ (ite (and (<= 2_y 4) (>= (+ 2_y 6) 4)) 3 0))))
 (<= ?x712 10)))
(assert
 (let ((?x371 (+ (ite (and (<= 3_y 4) (>= (+ 3_y 7) 4)) 3 0))))
 (<= ?x371 10)))
(assert
 (let ((?x8828 (+ (ite (and (<= 4_y 4) (>= (+ 4_y 4) 4)) 4 0))))
 (<= ?x8828 10)))
(assert
 (let ((?x7093 (+ (ite (and (<= 5_y 4) (>= (+ 5_y 6) 4)) 4 0))))
 (<= ?x7093 10)))
(assert
 (let ((?x1849 (+ (ite (and (<= 0_y 5) (>= (+ 0_y 3) 5)) 3 0))))
 (<= ?x1849 10)))
(assert
 (let ((?x11408 (+ (ite (and (<= 1_y 5) (>= (+ 1_y 4) 5)) 3 0))))
 (<= ?x11408 10)))
(assert
 (let ((?x3213 (+ (ite (and (<= 2_y 5) (>= (+ 2_y 6) 5)) 3 0))))
 (<= ?x3213 10)))
(assert
 (let ((?x6811 (+ (ite (and (<= 3_y 5) (>= (+ 3_y 7) 5)) 3 0))))
 (<= ?x6811 10)))
(assert
 (let ((?x10358 (+ (ite (and (<= 4_y 5) (>= (+ 4_y 4) 5)) 4 0))))
 (<= ?x10358 10)))
(assert
 (let ((?x21597 (+ (ite (and (<= 5_y 5) (>= (+ 5_y 6) 5)) 4 0))))
 (<= ?x21597 10)))
(assert
 (let ((?x10646 (+ (ite (and (<= 0_y 6) (>= (+ 0_y 3) 6)) 3 0))))
 (<= ?x10646 10)))
(assert
 (let ((?x21790 (+ (ite (and (<= 1_y 6) (>= (+ 1_y 4) 6)) 3 0))))
 (<= ?x21790 10)))
(assert
 (let ((?x19197 (+ (ite (and (<= 2_y 6) (>= (+ 2_y 6) 6)) 3 0))))
 (<= ?x19197 10)))
(assert
 (let ((?x19133 (+ (ite (and (<= 3_y 6) (>= (+ 3_y 7) 6)) 3 0))))
 (<= ?x19133 10)))
(assert
 (let ((?x18727 (+ (ite (and (<= 4_y 6) (>= (+ 4_y 4) 6)) 4 0))))
 (<= ?x18727 10)))
(assert
 (let ((?x18667 (+ (ite (and (<= 5_y 6) (>= (+ 5_y 6) 6)) 4 0))))
 (<= ?x18667 10)))
(assert
 (let ((?x18259 (+ (ite (and (<= 0_y 7) (>= (+ 0_y 3) 7)) 3 0))))
 (<= ?x18259 10)))
(assert
 (let ((?x18196 (+ (ite (and (<= 1_y 7) (>= (+ 1_y 4) 7)) 3 0))))
 (<= ?x18196 10)))
(assert
 (let ((?x17802 (+ (ite (and (<= 2_y 7) (>= (+ 2_y 6) 7)) 3 0))))
 (<= ?x17802 10)))
(assert
 (let ((?x17620 (+ (ite (and (<= 3_y 7) (>= (+ 3_y 7) 7)) 3 0))))
 (<= ?x17620 10)))
(assert
 (let ((?x17251 (+ (ite (and (<= 4_y 7) (>= (+ 4_y 4) 7)) 4 0))))
 (<= ?x17251 10)))
(assert
 (let ((?x3110 (+ (ite (and (<= 5_y 7) (>= (+ 5_y 6) 7)) 4 0))))
 (<= ?x3110 10)))
(assert
 (let ((?x5455 (+ (ite (and (<= 0_y 8) (>= (+ 0_y 3) 8)) 3 0))))
 (<= ?x5455 10)))
(assert
 (let ((?x6504 (+ (ite (and (<= 1_y 8) (>= (+ 1_y 4) 8)) 3 0))))
 (<= ?x6504 10)))
(assert
 (let ((?x22560 (+ (ite (and (<= 2_y 8) (>= (+ 2_y 6) 8)) 3 0))))
 (<= ?x22560 10)))
(assert
 (let ((?x14812 (+ (ite (and (<= 3_y 8) (>= (+ 3_y 7) 8)) 3 0))))
 (<= ?x14812 10)))
(assert
 (let ((?x8381 (+ (ite (and (<= 4_y 8) (>= (+ 4_y 4) 8)) 4 0))))
 (<= ?x8381 10)))
(assert
 (let ((?x6326 (+ (ite (and (<= 5_y 8) (>= (+ 5_y 6) 8)) 4 0))))
 (<= ?x6326 10)))
(assert
 (let ((?x12172 (+ (ite (and (<= 0_y 9) (>= (+ 0_y 3) 9)) 3 0))))
 (<= ?x12172 10)))
(assert
 (let ((?x11725 (+ (ite (and (<= 1_y 9) (>= (+ 1_y 4) 9)) 3 0))))
 (<= ?x11725 10)))
(assert
 (let ((?x23877 (+ (ite (and (<= 2_y 9) (>= (+ 2_y 6) 9)) 3 0))))
 (<= ?x23877 10)))
(assert
 (let ((?x23696 (+ (ite (and (<= 3_y 9) (>= (+ 3_y 7) 9)) 3 0))))
 (<= ?x23696 10)))
(assert
 (let ((?x23601 (+ (ite (and (<= 4_y 9) (>= (+ 4_y 4) 9)) 4 0))))
 (<= ?x23601 10)))
(assert
 (let ((?x23491 (+ (ite (and (<= 5_y 9) (>= (+ 5_y 6) 9)) 4 0))))
 (<= ?x23491 10)))
(assert
 (let ((?x23304 (+ (ite (and (<= 0_y 10) (>= (+ 0_y 3) 10)) 3 0))))
 (<= ?x23304 10)))
(assert
 (let ((?x10930 (+ (ite (and (<= 1_y 10) (>= (+ 1_y 4) 10)) 3 0))))
 (<= ?x10930 10)))
(assert
 (let ((?x4252 (+ (ite (and (<= 2_y 10) (>= (+ 2_y 6) 10)) 3 0))))
 (<= ?x4252 10)))
(assert
 (let ((?x4585 (+ (ite (and (<= 3_y 10) (>= (+ 3_y 7) 10)) 3 0))))
 (<= ?x4585 10)))
(assert
 (let ((?x9305 (+ (ite (and (<= 4_y 10) (>= (+ 4_y 4) 10)) 4 0))))
 (<= ?x9305 10)))
(assert
 (let ((?x18926 (+ (ite (and (<= 5_y 10) (>= (+ 5_y 6) 10)) 4 0))))
 (<= ?x18926 10)))
(assert
 (let ((?x1030 (+ (ite (and (<= 0_y 11) (>= (+ 0_y 3) 11)) 3 0))))
 (<= ?x1030 10)))
(assert
 (let ((?x3443 (+ (ite (and (<= 1_y 11) (>= (+ 1_y 4) 11)) 3 0))))
 (<= ?x3443 10)))
(assert
 (let ((?x8341 (+ (ite (and (<= 2_y 11) (>= (+ 2_y 6) 11)) 3 0))))
 (<= ?x8341 10)))
(assert
 (let ((?x17537 (+ (ite (and (<= 3_y 11) (>= (+ 3_y 7) 11)) 3 0))))
 (<= ?x17537 10)))
(assert
 (let ((?x18437 (+ (ite (and (<= 4_y 11) (>= (+ 4_y 4) 11)) 4 0))))
 (<= ?x18437 10)))
(assert
 (let ((?x11081 (+ (ite (and (<= 5_y 11) (>= (+ 5_y 6) 11)) 4 0))))
 (<= ?x11081 10)))
(assert
 (let ((?x4578 (+ (ite (and (<= 0_y 12) (>= (+ 0_y 3) 12)) 3 0))))
 (<= ?x4578 10)))
(assert
 (let ((?x12378 (+ (ite (and (<= 1_y 12) (>= (+ 1_y 4) 12)) 3 0))))
 (<= ?x12378 10)))
(assert
 (let ((?x15244 (+ (ite (and (<= 2_y 12) (>= (+ 2_y 6) 12)) 3 0))))
 (<= ?x15244 10)))
(assert
 (let ((?x12506 (+ (ite (and (<= 3_y 12) (>= (+ 3_y 7) 12)) 3 0))))
 (<= ?x12506 10)))
(assert
 (let ((?x12756 (+ (ite (and (<= 4_y 12) (>= (+ 4_y 4) 12)) 4 0))))
 (<= ?x12756 10)))
(assert
 (let ((?x1266 (+ (ite (and (<= 5_y 12) (>= (+ 5_y 6) 12)) 4 0))))
 (<= ?x1266 10)))
(assert
 (let ((?x8398 (+ (ite (and (<= 0_y 13) (>= (+ 0_y 3) 13)) 3 0))))
 (<= ?x8398 10)))
(assert
 (let ((?x3414 (+ (ite (and (<= 1_y 13) (>= (+ 1_y 4) 13)) 3 0))))
 (<= ?x3414 10)))
(assert
 (let ((?x7117 (+ (ite (and (<= 2_y 13) (>= (+ 2_y 6) 13)) 3 0))))
 (<= ?x7117 10)))
(assert
 (let ((?x6769 (+ (ite (and (<= 3_y 13) (>= (+ 3_y 7) 13)) 3 0))))
 (<= ?x6769 10)))
(assert
 (let ((?x19527 (+ (ite (and (<= 4_y 13) (>= (+ 4_y 4) 13)) 4 0))))
 (<= ?x19527 10)))
(assert
 (let ((?x12320 (+ (ite (and (<= 5_y 13) (>= (+ 5_y 6) 13)) 4 0))))
 (<= ?x12320 10)))
(assert
 (let ((?x14550 (+ (ite (and (<= 0_y 14) (>= (+ 0_y 3) 14)) 3 0))))
 (<= ?x14550 10)))
(assert
 (let ((?x3671 (+ (ite (and (<= 1_y 14) (>= (+ 1_y 4) 14)) 3 0))))
 (<= ?x3671 10)))
(assert
 (let ((?x1349 (+ (ite (and (<= 2_y 14) (>= (+ 2_y 6) 14)) 3 0))))
 (<= ?x1349 10)))
(assert
 (let ((?x19302 (+ (ite (and (<= 3_y 14) (>= (+ 3_y 7) 14)) 3 0))))
 (<= ?x19302 10)))
(assert
 (let ((?x536 (+ (ite (and (<= 4_y 14) (>= (+ 4_y 4) 14)) 4 0))))
 (<= ?x536 10)))
(assert
 (let ((?x5744 (+ (ite (and (<= 5_y 14) (>= (+ 5_y 6) 14)) 4 0))))
 (<= ?x5744 10)))
(assert
 (let ((?x12700 (+ (ite (and (<= 0_x 0) (>= (+ 0_x 3) 0)) 3 0))))
 (<= ?x12700 makespan)))
(assert
 (let ((?x8258 (+ (ite (and (<= 1_x 0) (>= (+ 1_x 3) 0)) 4 0))))
 (<= ?x8258 makespan)))
(assert
 (let ((?x15178 (+ (ite (and (<= 2_x 0) (>= (+ 2_x 3) 0)) 6 0))))
 (<= ?x15178 makespan)))
(assert
 (let ((?x15446 (+ (ite (and (<= 3_x 0) (>= (+ 3_x 3) 0)) 7 0))))
 (<= ?x15446 makespan)))
(assert
 (let ((?x3681 (+ (ite (and (<= 4_x 0) (>= (+ 4_x 4) 0)) 4 0))))
 (<= ?x3681 makespan)))
(assert
 (let ((?x9644 (+ (ite (and (<= 5_x 0) (>= (+ 5_x 4) 0)) 6 0))))
 (<= ?x9644 makespan)))
(assert
 (let ((?x59 (+ (ite (and (<= 0_x 1) (>= (+ 0_x 3) 1)) 3 0))))
 (<= ?x59 makespan)))
(assert
 (let ((?x23826 (+ (ite (and (<= 1_x 1) (>= (+ 1_x 3) 1)) 4 0))))
 (<= ?x23826 makespan)))
(assert
 (let ((?x23354 (+ (ite (and (<= 2_x 1) (>= (+ 2_x 3) 1)) 6 0))))
 (<= ?x23354 makespan)))
(assert
 (let ((?x14757 (+ (ite (and (<= 3_x 1) (>= (+ 3_x 3) 1)) 7 0))))
 (<= ?x14757 makespan)))
(assert
 (let ((?x8278 (+ (ite (and (<= 4_x 1) (>= (+ 4_x 4) 1)) 4 0))))
 (<= ?x8278 makespan)))
(assert
 (let ((?x22455 (+ (ite (and (<= 5_x 1) (>= (+ 5_x 4) 1)) 6 0))))
 (<= ?x22455 makespan)))
(assert
 (let ((?x22254 (+ (ite (and (<= 0_x 2) (>= (+ 0_x 3) 2)) 3 0))))
 (<= ?x22254 makespan)))
(assert
 (let ((?x21966 (+ (ite (and (<= 1_x 2) (>= (+ 1_x 3) 2)) 4 0))))
 (<= ?x21966 makespan)))
(assert
 (let ((?x21580 (+ (ite (and (<= 2_x 2) (>= (+ 2_x 3) 2)) 6 0))))
 (<= ?x21580 makespan)))
(assert
 (let ((?x21254 (+ (ite (and (<= 3_x 2) (>= (+ 3_x 3) 2)) 7 0))))
 (<= ?x21254 makespan)))
(assert
 (let ((?x20825 (+ (ite (and (<= 4_x 2) (>= (+ 4_x 4) 2)) 4 0))))
 (<= ?x20825 makespan)))
(assert
 (let ((?x20582 (+ (ite (and (<= 5_x 2) (>= (+ 5_x 4) 2)) 6 0))))
 (<= ?x20582 makespan)))
(assert
 (let ((?x20297 (+ (ite (and (<= 0_x 3) (>= (+ 0_x 3) 3)) 3 0))))
 (<= ?x20297 makespan)))
(assert
 (let ((?x19933 (+ (ite (and (<= 1_x 3) (>= (+ 1_x 3) 3)) 4 0))))
 (<= ?x19933 makespan)))
(assert
 (let ((?x19837 (+ (ite (and (<= 2_x 3) (>= (+ 2_x 3) 3)) 6 0))))
 (<= ?x19837 makespan)))
(assert
 (let ((?x16672 (+ (ite (and (<= 3_x 3) (>= (+ 3_x 3) 3)) 7 0))))
 (<= ?x16672 makespan)))
(assert
 (let ((?x13525 (+ (ite (and (<= 4_x 3) (>= (+ 4_x 4) 3)) 4 0))))
 (<= ?x13525 makespan)))
(assert
 (let ((?x3205 (+ (ite (and (<= 5_x 3) (>= (+ 5_x 4) 3)) 6 0))))
 (<= ?x3205 makespan)))
(assert
 (let ((?x14948 (+ (ite (and (<= 0_x 4) (>= (+ 0_x 3) 4)) 3 0))))
 (<= ?x14948 makespan)))
(assert
 (let ((?x8019 (+ (ite (and (<= 1_x 4) (>= (+ 1_x 3) 4)) 4 0))))
 (<= ?x8019 makespan)))
(assert
 (let ((?x1809 (+ (ite (and (<= 2_x 4) (>= (+ 2_x 3) 4)) 6 0))))
 (<= ?x1809 makespan)))
(assert
 (let ((?x12084 (+ (ite (and (<= 3_x 4) (>= (+ 3_x 3) 4)) 7 0))))
 (<= ?x12084 makespan)))
(assert
 (let ((?x17111 (+ (ite (and (<= 4_x 4) (>= (+ 4_x 4) 4)) 4 0))))
 (<= ?x17111 makespan)))
(assert
 (let ((?x13535 (+ (ite (and (<= 5_x 4) (>= (+ 5_x 4) 4)) 6 0))))
 (<= ?x13535 makespan)))
(assert
 (let ((?x9436 (+ (ite (and (<= 0_x 5) (>= (+ 0_x 3) 5)) 3 0))))
 (<= ?x9436 makespan)))
(assert
 (let ((?x4413 (+ (ite (and (<= 1_x 5) (>= (+ 1_x 3) 5)) 4 0))))
 (<= ?x4413 makespan)))
(assert
 (let ((?x18764 (+ (ite (and (<= 2_x 5) (>= (+ 2_x 3) 5)) 6 0))))
 (<= ?x18764 makespan)))
(assert
 (let ((?x17640 (+ (ite (and (<= 3_x 5) (>= (+ 3_x 3) 5)) 7 0))))
 (<= ?x17640 makespan)))
(assert
 (let ((?x18063 (+ (ite (and (<= 4_x 5) (>= (+ 4_x 4) 5)) 4 0))))
 (<= ?x18063 makespan)))
(assert
 (let ((?x5697 (+ (ite (and (<= 5_x 5) (>= (+ 5_x 4) 5)) 6 0))))
 (<= ?x5697 makespan)))
(assert
 (let ((?x4398 (+ (ite (and (<= 0_x 6) (>= (+ 0_x 3) 6)) 3 0))))
 (<= ?x4398 makespan)))
(assert
 (let ((?x5578 (+ (ite (and (<= 1_x 6) (>= (+ 1_x 3) 6)) 4 0))))
 (<= ?x5578 makespan)))
(assert
 (let ((?x19469 (+ (ite (and (<= 2_x 6) (>= (+ 2_x 3) 6)) 6 0))))
 (<= ?x19469 makespan)))
(assert
 (let ((?x3166 (+ (ite (and (<= 3_x 6) (>= (+ 3_x 3) 6)) 7 0))))
 (<= ?x3166 makespan)))
(assert
 (let ((?x7717 (+ (ite (and (<= 4_x 6) (>= (+ 4_x 4) 6)) 4 0))))
 (<= ?x7717 makespan)))
(assert
 (let ((?x5518 (+ (ite (and (<= 5_x 6) (>= (+ 5_x 4) 6)) 6 0))))
 (<= ?x5518 makespan)))
(assert
 (let ((?x3324 (+ (ite (and (<= 0_x 7) (>= (+ 0_x 3) 7)) 3 0))))
 (<= ?x3324 makespan)))
(assert
 (let ((?x5368 (+ (ite (and (<= 1_x 7) (>= (+ 1_x 3) 7)) 4 0))))
 (<= ?x5368 makespan)))
(assert
 (let ((?x7779 (+ (ite (and (<= 2_x 7) (>= (+ 2_x 3) 7)) 6 0))))
 (<= ?x7779 makespan)))
(assert
 (let ((?x8739 (+ (ite (and (<= 3_x 7) (>= (+ 3_x 3) 7)) 7 0))))
 (<= ?x8739 makespan)))
(assert
 (let ((?x10616 (+ (ite (and (<= 4_x 7) (>= (+ 4_x 4) 7)) 4 0))))
 (<= ?x10616 makespan)))
(assert
 (let ((?x18523 (+ (ite (and (<= 5_x 7) (>= (+ 5_x 4) 7)) 6 0))))
 (<= ?x18523 makespan)))
(assert
 (let ((?x9162 (+ (ite (and (<= 0_x 8) (>= (+ 0_x 3) 8)) 3 0))))
 (<= ?x9162 makespan)))
(assert
 (let ((?x5842 (+ (ite (and (<= 1_x 8) (>= (+ 1_x 3) 8)) 4 0))))
 (<= ?x5842 makespan)))
(assert
 (let ((?x7611 (+ (ite (and (<= 2_x 8) (>= (+ 2_x 3) 8)) 6 0))))
 (<= ?x7611 makespan)))
(assert
 (let ((?x6917 (+ (ite (and (<= 3_x 8) (>= (+ 3_x 3) 8)) 7 0))))
 (<= ?x6917 makespan)))
(assert
 (let ((?x7876 (+ (ite (and (<= 4_x 8) (>= (+ 4_x 4) 8)) 4 0))))
 (<= ?x7876 makespan)))
(assert
 (let ((?x1907 (+ (ite (and (<= 5_x 8) (>= (+ 5_x 4) 8)) 6 0))))
 (<= ?x1907 makespan)))
(assert
 (let ((?x5493 (+ (ite (and (<= 0_x 9) (>= (+ 0_x 3) 9)) 3 0))))
 (<= ?x5493 makespan)))
(assert
 (let ((?x10895 (+ (ite (and (<= 1_x 9) (>= (+ 1_x 3) 9)) 4 0))))
 (<= ?x10895 makespan)))
(assert
 (let ((?x446 (+ (ite (and (<= 2_x 9) (>= (+ 2_x 3) 9)) 6 0))))
 (<= ?x446 makespan)))
(assert
 (let ((?x5627 (+ (ite (and (<= 3_x 9) (>= (+ 3_x 3) 9)) 7 0))))
 (<= ?x5627 makespan)))
(assert
 (let ((?x16959 (+ (ite (and (<= 4_x 9) (>= (+ 4_x 4) 9)) 4 0))))
 (<= ?x16959 makespan)))
(assert
 (let ((?x13057 (+ (ite (and (<= 5_x 9) (>= (+ 5_x 4) 9)) 6 0))))
 (<= ?x13057 makespan)))
(check-sat)
