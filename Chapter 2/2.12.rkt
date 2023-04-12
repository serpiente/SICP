#lang sicp

(define (make-interval a b) (cons a b))

(define (make-center-percent center percentage)
  (let ((delta (* center percentage)))
    (make-interval (- center delta) (+ center delta))
    )
  )

(make-center-percent 10 0.1)