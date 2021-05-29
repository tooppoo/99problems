(include "../problem05/src.scm")
(define (palindrome? xs)
  (equal?
    xs
    (my-reverse xs)))