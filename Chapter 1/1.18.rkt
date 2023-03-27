#lang sicp

(define (double x)
  (* x 2))
(define (halve x)
  (/ x 2))

(define (iter-mult a b res)
  (cond
    [(= b 0) res]
    [(even? b) (iter-mult (double a) (halve b) res)]
    [else (iter-mult a (- b 1) (+ res a))]))
  
(iter-mult 100 5 0)
