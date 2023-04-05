#lang sicp

(define (point x y) (cons x y))

(define (x-point p) (car p))

(define (y-point p) (cdr p))

(define (make-segment p1 p2) (cons p1 p2))

(define (start-segment seg) (car seg))

(define (end-segment seg) (cdr seg))

(define (average x y ) (/ (+ x y) 2))

(define (midpoint-segment seg) 
    (
        let ((x1 (x-point (start-segment seg)))
        (x2 (x-point (end-segment seg)))
        (y1 (y-point (start-segment seg)))
        (y2 (y-point (end-segment seg))))
        (point (average x1 x2) (average y1 y2))
    )
)

(midpoint-segment (make-segment (point 1 2) (point 2 4)))
