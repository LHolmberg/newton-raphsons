(define a 1) ;;Initial guess value
(define value 25600) ;;Value to sqrt

(define (f x) (- (* x x) value)) ;;f(x) = x^2 - P which means : looking for the square root

(define (fprime x) (* 2 x)) ;; f'(x)

(define (Newton n)
  (cond((= n 1) a)
  (else (set! a (- a (/ (f a) (fprime a))))
  (Newton (- n 1)))))

(define n 12) ;;num of iterations

(display (Newton n))
