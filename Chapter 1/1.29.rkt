#lang sicp

(define (sum term a next b )
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b)
         )
      )
  )

(define (cube x) (* x x x))

(define (integral f a b n)
  (define h (/ (- b a) n))
  (define (y k)
    (f (+ a (* h k)))
    )
  (define (term i)
    (* (cond ((= i 0) 1)
             ((even? i) 2)
             (else 4)
             )
       (y i)
       )
    )
  (/ (* h (sum term a inc n)) 3)
  )

(integral cube 0 1 1000)