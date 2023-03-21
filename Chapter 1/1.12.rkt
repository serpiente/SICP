#lang sicp

(define (pascal col row)
  (cond
    ((or (= row 1) (= col 1)) 1)
    ((= row col) 1)
    (else (+ (pascal (- col 1) (- row 1)) (pascal col (- row 1))))
    )
  )

(pascal 3 5)
