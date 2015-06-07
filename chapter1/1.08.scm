(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess))
     (* guess 0.001)))

(define (cubic x)
  (cubic-iter 1.0 x))
(define (improve y x)
   (/ (+ (/ x (* y y))
         (* 2 y))
      3))
(define (average x y)
  (/ (+ x y) 2))
(define (cubic-iter guess x)
    (if (good-enough? guess x)
        guess
        (cubic-iter (improve guess x)
                   x)))

(cubic 27)

