#lang sicp

(define (square x) (* x x))

(define (sum-square-two-largest a b c)
  (- (+ (square a) (square b) (square c))
     (square (min a b c))
     ))

(sum-square-two-largest 1 2 3)