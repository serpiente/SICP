#lang sicp

(define (even? n) 
(= (remainder n 2) 0))

(define (fast-exp a b n) 
(cond 
    ((= n 1) (* a b))
    ((even? n) (fast-exp a (* b b) (/ n 2)))
    (else (fast-exp (* a b) b (- n 1)))
    )
)

(fast-exp 1 2 10)

