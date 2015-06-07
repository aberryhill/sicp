(define (sum_largest_squares x y z)
    (cond ((= (min x y z) x) (sum_squares y z))
          ((= (min x y z) y) (sum_squares x z))
          ((= (min x y z) z) (sum_squares x y))))

(define (sum_squares x y)
    (+ (* x x) (* y y)))

(sum_largest_squares 5 5 5)
(sum_largest_squares 5 5 3)
