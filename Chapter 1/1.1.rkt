#lang sicp

;10

10

;(+ 5 3 4)

(+ 5 3 4)

;(- 9 1)

(- 9 1)

(/ 6 2)

(+ (* 2 4) (- 4 6))

(define a 3)

(define b (+ 1 a))

(+ a b (* a b))

(= a b)

(if (and (> b a) (< b (* a b)))
    b
    a)

(cond ((= 4 6) 6)
      ((= b 4) ( + 6 7 a))
      (else 25)
      )

(+ 2 (if (> b a) b a))

(* (cond ((> a b ) a)
         ((< a b) b)
         (else -1))
   (+ a 1 ))