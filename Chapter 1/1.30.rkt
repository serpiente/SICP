#lang sicp

(define (sum term a next b)
  (define (iter a result)
    (if (> a b) result (iter (next a) (+ result (term a)))))
  (iter a 0))

(define (identity x)
  x)

(sum identity 0 inc 10)
