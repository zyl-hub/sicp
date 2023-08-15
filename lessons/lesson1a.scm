#lang scheme
(define a (* 5 5))
;; no ( because this define a sign
(define square (lambda (x) (* x x)))

;; define a procedure
(define (abs x)
  ;;     cond     action
  (cond ((< x 0) (- x))
        ((= x 0) 0)
        ((> x 0) x)))

(define average (lambda (x y) (/ (+ x y) 2)))

(abs 1/4)

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

;; recursive definition
(define (try guess x)
  (if (good-enough? guess x)
      guess
      (try (improve guess x) x)))

;; sqrt black box
(define (sqrt x)
  (define (improve guess)
    (average guess (/ x guess)))
  (define (good-enough? guess)
    (< (abs (- (square guess) x ))
       .001))
  (define (try guess)
    (if (good-enough? guess)
        guess
        (try (improve guess))))
  (try 1.0))

(sqrt 100)
