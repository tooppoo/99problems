(define (fold-left f accum xs)
  (if (null? xs)
    accum
    (fold-left
      f
      (f (car xs) accum)
      (cdr xs))))
(define (my-reverse xs)
  (fold-left cons '() xs))
