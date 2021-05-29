(use gauche.test)
(test-start :problem-01)
(include "src.scm")
(test-section "witn not-empty list")
(test "find the last box of a list"
  'd (lambda () (my-last '(a b c d))))
(test-section "witn empty list")
(test "return empty list"
  '() (lambda () '()))
(test-end)
