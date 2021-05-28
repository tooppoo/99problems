(define (my-but-last l)
  (if (<= (length l) 2)
    l
    (my-but-last (cdr l))))