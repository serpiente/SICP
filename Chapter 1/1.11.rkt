#lang sicp


(define (f i j k) (+ i (* 2 j) (* 3 k))
  )

(define (f-rec n)
  (cond ((< n 3) n)
        (else (f
               (f-rec (- n 1))
               (f-rec (- n 2))
               (f-rec (- n 3))
               ))
        )
  )

(f-rec 10)



(define (f-iter i j k n trg)
  (cond
    ((= n trg) (f i j k))
    (else (f-iter (f i j k) i j (inc n) trg))
    )
  )
(f-iter 2 1 0 3 10)