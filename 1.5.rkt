#lang racket

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))

; applicative-order will never finish as p is recursive (infinite loop)
; normal-order will probably return just 0
