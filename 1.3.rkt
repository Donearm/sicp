#lang racket

(define (sum-squares x y)
  (+ (* x x) (* y y)))

(define (bigger-of-three-squares x y z)
  (if (and (> x y) (> y z))
	(sum-squares x y)
	(if (and (> x y) (> z y))
	  (sum-squares x z)
	  (if (> x z)
		(sum-squares y x)
		(sum-squares y z)))))

(bigger-of-three-squares 1 2 5)
