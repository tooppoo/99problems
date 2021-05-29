(use gauche.test)
(test-start :problem-06)
(include "src.scm")
(test-section "with non-empty list")
(test "find out that (x a m a x) is a palindrome"
  #t (lambda () (palindrome? '(x a m a x))))
(test "find out that (x a m b x) is not a palindrome"
  #f (lambda () (palindrome? '(x a m b x))))
(test-section "with empty list")
(test "evaluate it as palindrom"
  #t (lambda () (palindrome? '())))
(test-end)
