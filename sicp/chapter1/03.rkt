#lang sicp

(#%require rackunit)

(define (solution x y z)
  (cond ((and (> x z) (> y z)) (+ (* x x) (* y y)))
        ((and (> x z) (> z y)) (+ (* x x) (* z z)))
        ((and (> z x) (> y x)) (+ (* z z) (* y y)))
        ((and (> x y) (> z y)) (+ (* z z) (* x x)))
        ((and (= y z) (> x y)) (+ (* x x) (* y y)))
        (else                  (+ (* z z) (* y y)))
        
  ))

(check-equal? (solution 2 3 4) 25)
(check-equal? (solution 2 2 4) 20)
(check-equal? (solution 4 2 2) 20)
(check-equal? (solution 2 4 2) 20)
(check-equal? (solution 2 4 4) 32)
(check-equal? (solution 4 4 2) 32)
(check-equal? (solution 4 2 4) 32)
(check-equal? (solution 2 2 2) 8)