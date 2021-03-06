(set-logic QF_BV)
(declare-fun v1 () (_ BitVec 2))
(declare-fun v2 () (_ BitVec 2))
(define-fun $e3 () (_ BitVec 2) (_ bv0 2))
(define-fun $e4 () (_ BitVec 4) (_ bv6 4))
(define-fun $e5 () (_ BitVec 4) (concat $e3 v1))
(define-fun $e6 () (_ BitVec 4) (concat $e3 v2))
(define-fun $e7 () (_ BitVec 4) (bvmul $e5 $e6))
(define-fun $e8 () (_ BitVec 1) (ite (= (bvnot $e4) $e7) #b1 #b0))
(assert (not (= $e8 #b0)))
(check-sat)
(exit)
