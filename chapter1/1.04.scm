(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))

;; This is a+b, if b is positive
;; It is a-b, if b is negative
;; More simply, this is a + absolute_value(b)
