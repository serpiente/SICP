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

(define (cube-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x)
                 x)))


(define (good-enough? guess x)
  (<
   (abs (- (improve guess x) guess))
   (* 0.0001 guess))
  )

(define (square x)
  (* x x))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cube-root x)
  (cube-iter 1.0 x))

(cube-root 1000)