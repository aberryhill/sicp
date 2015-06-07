(define (p) (p))
(define (test x y)
    (if (= x 0)
        0
        y))

(test 0 (p))

;; In applicative order, we evalute arguments then apply
;; In this case, evaluation never terminates because p expands to itself

;; In normal order, we expand and then reduce
;; (test 0 (p))
;; (if (= 0 0) 0 (p))
;; (if #t 0 (p))
;; 0

;; The MIT Scheme interpreter uses an applicative order
