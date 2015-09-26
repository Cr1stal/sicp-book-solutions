(define (F n)
  (if (< n 3)
    n
    (+ (F (- n 1)) (F (- n 2)) (F (- n 3)))))

(display "\n")
(display (F 2))
(display "\n")
(display (F 3))
(display "\n")
(display (F 4))
(display "\n")
