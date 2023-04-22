#lang sicp

(define (same-parity head . tails) 
    (define (iter acc items)
        (if (null? items)
            acc
            (
                iter
                (if (even? (+ (car items) head))
                    (cons (car items) acc)
                    acc
                )
                (cdr items)
            )
        )
    )
    (iter '() tails)
)

(same-parity 1 2 3 4 5 6 7)