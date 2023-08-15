;; (define (circle x y)
;;   (define dt 0.01)
;;   (plot x y)
;;   (circle (- x (* y dt))
;;           (+ y (* x dt))))

(define (fib n)
  (if (< n 2)
      n
      (+ (fib (- n 1))
         (fib (- n 2)))))

(fib 4)
