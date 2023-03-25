#lang sicp


(define (smallest-divisor n)
  (find-divisor n 2)
  )

(define (square n) (* n n))

(define (divides? a b )
  (= (remainder b a) 0)
  )

(define (next-divisor n)
  (cond ((= n 2) 3)
        (else (+ n 2)))
  )

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next-divisor test-divisor)))
        )
  )


(smallest-divisor 17)