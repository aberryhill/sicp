;; The honest truth is that the procedure of this proof is not that important.
;; The most important lesson is that without this proof, fibonacci must be
;; calculated recursively in exponential time. With this proof, fibonacci
;; can be calculated in constant time by evaluating the golden ratio.
;;
;; I will instead sketch the proof at a high level, and leave the details to the reader
;;
;; To show that Fib(n) is the closest integer to phi^n / sqrt(5), we must show that
;; the difference between them must be less then 1/2. Hence we must show:
;; | fib(n) - phi^n / sqrt(5) | <= 1/2
;;
;; The hint given to us is that fib(n) = (phi^n - psi^n) / sqrt(5)
;; This can be rewritten as fib(n) - phi^n/sqrt(5) = - psi^n/sqrt(5)
;; We can substitute this into the first equation, and now we must show
;; | psi^n / sqrt(5) | <= 1/2
;;
;; Showing that to be the case is relatively easy, since psi = (1-sqrt(5))/2
;;
;; The last step is that we did not prove the hint. Proving it is easily done by induction.
;; Prove the base case that the hint holds for n=0,1,2.
;; Then assume it is true for n-1 and n, and prove that it holds for n+1.
;; It is helpful to utilize the fact that phi^2 = phi + 1
;; More generally, phi^(n+1) = phi^n + phi^(n-1)
