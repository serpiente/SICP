#lang sicp

(define (product term a next b)
  (if (> a b) 1 (* (term a) (product term (next a) next b))))

(define (identity x)
  x)

(define (square x)
  (* x x))

(define (approximated-pi precision)
  (define (term n)
    (/ (* 2 (quotient (+ n 2) 2)) (+ 1 (* 2 (quotient (+ n 1) 2)))))
  (define (next n)
    (+ n 1))
  (product term 1.0 next precision))

(approximated-pi 10)
