#lang scheme
(define (make-string-list n)
  (cond
    [(> n 1)
      (cons (string-append (number->string n) " seconds") (make-string-list(- n 1)))]
    [(= n 1)
      (cons "1 second" (make-string-list(- n 1)))]
    [else 
      (append '("Finished"))]))

(make-string-list 3)