(define (new-if predicate then-clause else-cause)
    (cond (predicate then-clause)
          (else else-cause)))

(new-if (= 2 3) 0 5)
(new-if (= 1 1) 0 5)

(define (sqrt x)
  (sqrt-iter 1.0 x))
(define (improve guess x)
   (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))
(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x)
                       x)))
(sqrt 9)


;; When she does this, she gets an infinite recursion
;; Scheme uses applicative-order, so it will evaluate all
;; arguments before evaluating the function call.
;; So before evaluating new-if, we try to evaluate the recursive sqrt-iter,
;; but that requires another new-f, which requires another sqrt-iter.
;;
;; This would happen with the special form if, because the special form
;; evaluates the conditional first, and then only evaluates the clause
;; that is needed. The other one is not evaluated.
