#lang sicp

(define (make-interval x y) (cons x y))

(define (upper-bound interval) (max (car interval) (cdr interval)))

(define (lower-bound interval) (min (car interval) (cdr interval)))

