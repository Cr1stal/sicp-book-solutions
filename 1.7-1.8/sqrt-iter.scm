(define (sqrt-iter guess x old-guess)
  (if (good-enough? guess x old-guess)
    guess
    (sqrt-iter (improve guess x)
               x guess)))

(define (cubic-sqrt-iter guess x old-guess)
  (if (good-enough? guess x old-guess)
    guess
    (cubic-sqrt-iter (cubic-improve guess x)
               x guess)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (cubic-improve guess x)
  (average guess (/ (+ (/ x (* guess guess)) (* 2 guess)) 3)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x old-guess)
  (< (abs (- old-guess guess)) 0.000000001))

(define (good-enough-old? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x 0.0))

(define (cubic-sqrt x)
  (cubic-sqrt-iter 1.0 x 0.0))

(display "\n")
(display (cubic-sqrt 0.001))
(display "\n")
(display (cubic-sqrt 8))
(display "\n")
(display (cubic-sqrt 27))
(display "\n")
(display (sqrt 0.01))
(display "\n")
(display (sqrt 9))
(display "\n")
(display (sqrt 12))
(display "\n")
(display (sqrt 16))
(display "\n")
