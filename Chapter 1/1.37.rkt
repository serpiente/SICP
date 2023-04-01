#lang sicp

(define (cont-frac n d k)
  (define (frac i)
    (if (= k i)
        (/ (n i) (d i))
        (/ (n i) (+ (d i) (frac (+ i 1))))))
  (frac 1))

 (cont-frac (lambda (i) 1.0) (lambda (i) 1.0)  10)