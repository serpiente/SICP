#lang sicp


(define (s-* a b)
  (if (= b 0 )
      0
      (+ a (s-* a (- b 1))))
  )

(define (dbl a) (+ a a))
(define (hlf a) (/ a 2))

(define (f-* a b )
  (cond
    ((= b 0) 0)
    ((even? b) (dbl (f-* a (hlf b))))
    (else (+ a (f-* a (- b 1))))
    )
  )

(f-*  220000 38000003)
