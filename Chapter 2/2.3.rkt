#lang sicp

(define (point x y) (cons x y))

(define (x-point p) (car p))

(define (y-point p) (cdr p))

(define (make-rectangle upper-left lower-right) (cons upper-left lower-right))

(define (upper-left-ractangle rectangle)
  (car rectangle))

(define (lower-right-rectangle rectangle)
  (cdr rectangle))

(define (width rectangle) (- (x-point (lower-right-rectangle)) (x-point (upper-left-ractangle))))

(define (height rectangle) (- (y-point (upper-left-ractangle)) (y-point (lower-right-rectangle))))

(define (area rectangle) (* (width rectangle) (height rectangle)))

(define (perimete rectangle) (+ (width rectangle) (height rectangle)))