(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(display "\n")
(display (A 2 1))
(display "\n")
(display (A 2 2))
(display "\n")
(display (A 2 3))
(display "\n")
(display (A 2 4))
(display "\n")