(use gauche.test)
(test-start :problem-04)
(include "src.scm")
(test-section "with non-empty list")
(test "find the number of elements of a list"
  4 (lambda () (my-length '(a b c d))))
(test-section "with empty list")
(test "return 0"
  0 (lambda () (my-length '())))
(test-end)
