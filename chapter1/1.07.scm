;; For small numbers, checking the square against a fixed tolerance
;; can result in huge errors. For example, the true value of this
;; should be 0.01, but it returned 0.032
;; (sqrt 0.0001)

;; For large numbers, the computer cannot represent the square with enough
;; precision, so it never appears to be within 0.0001. For example, this
;; did not return on my machine:
;; (sqrt 1.0e50)

;; Rather than compare the absolute difference, it would be better
;; to look at relative improvement, and require we improved the guess
;; by a number smaller than 0.0001

;; The following is a better version of good-enough
(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess))
     (* guess 0.0001)))

(define (sqrt x)
  (sqrt-iter 1.0 x))
(define (improve guess x)
   (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))
(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
                   x)))

(sqrt 0.0001)
(sqrt 1.0e50)
