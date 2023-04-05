#lang sicp

(define (make-rat n d)
    (let ((g (gcd n d)))
        (let ((n (/ n g))
              (d (/ d g))
        )
         (if (< d 0)
          (cons (- n) (- d))
          (cons n d)))
    )
)

(make-rat -4 8)