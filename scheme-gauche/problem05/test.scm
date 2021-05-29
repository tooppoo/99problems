(use gauche.test)
(test-start :problem-05)
(include "src.scm")
(test-section "with non-empty list")
(test "reverse a list"
  '(4 3 2 1) (lambda () (my-reverse '(1 2 3 4))))
(test-section "with empty list")
(test "return empty list"
  '() (lambda () (my-reverse '())))
(test-end)
