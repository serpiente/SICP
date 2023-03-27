#lang sicp

(define (accumulate predicate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (if (predicate a) term a (null-value))
                (accumulate predicate combiner null-value term (next a) next b))))
