#lang sicp

;For very large numbers we could reach an overflow when summing the guess and guess/x
;for small numbers we can break the loop before we reach a good approximation

; For very small numbers, the approximation may end too early
; due to the comparatively large tolerance, thereby leading
; to a significantly inaccurate result. While for very large
; numbers, the given tolerance may take unbearable time or
; even impossible to reach since the approximation is too slow
; or the value has gone beyond the machine's floating
; point precision.

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (good-enough? guess x)
  (<
   (abs (- (improve guess x) guess))
   (* 0.0001 guess))
  )


(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 2)