#lang sicp

(define (cons a b) (* (expt 2 a) (expt 3 b)))

(define (divides? a b)
    (= (remainder b a) 0))

(define (exponent-decomposition x base) 
    (define (iter n acc)
    (if (divides? base n)
        (iter (/ n base) (inc acc))
        acc))
  (iter x 0)
)

(define (cdr n) (exponent-decomposition n 2))

(cdr(cons 7 4) )