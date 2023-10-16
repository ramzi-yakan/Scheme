#lang scheme
(define (sum-of-divisors n i)
  (cond
    [(= i 1) 1]
    [(= (remainder n i) 0)
     (+ i (sum-of-divisors n (- i 1)))]
    [else (sum-of-divisors n (- i 1))]))

(define (find-abundant n)
  (define i n)
  (cond
    [(> (sum-of-divisors n i) (* 2 n))
    (append i)
    (- i 1)]
  ))

(find-abundant 25)