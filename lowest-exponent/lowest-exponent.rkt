#lang scheme
(define (lowest-exponent base bound)
  (if (> base 1)
      (ceiling(/ (log bound) (log base)))
  '()))

(lowest-exponent 3 27)
(lowest-exponent 3 28)