(define (cube x)
  (cube-iter 1.0 x))

(define (cube-iter y x)
  (if (good-enough? y (improve x y))
      y
      (cube-iter (improve x y) x)))

(define (improve x y)
  (/ (+ (/ x
           (square y))
        (* 2
           y))
     3))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? old-guess new-guess)
  (>  0.01
      (/ (abs (- new-guess old-guess))
         old-guess) ))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (square x) (* x x))
