(define (even? x)
  (= (remainder x 2) 0))

(define (fast-expt b n a)
  (cond ((= n 0) a)
        ((even? n) (fast-expt (* b b) (/ n 2) a))
        (else (fast-expt b (- n 1) (* a b)))))


(display "\n")
(display (fast-expt 2 5 1))
(display "\n")
(display (fast-expt 2 5 1))
(display "\n")
