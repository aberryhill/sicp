;; Recursive f
(define (f n)
    (if (< n 3)
        n
        (+ (f (- n 1))
           (* 2 (f (- n 2)))
           (* 3 (f (- n 3))))))

(f 5)
(f 10)

;; Iterative f
(define (iter-f n)
    (define (iter f1 f2 f3 i)
        (if (> i n)
            f1
            (iter (+ f1 (* 2 f2) (* 3 f3))
                  f1
                  f2
                  (+ i 1))))
    (if (< n 3)
        n
        (iter 2 1 0 3)))

(iter-f 5)
(iter-f 10)

