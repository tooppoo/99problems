(use gauche.test)
(test-start :problem-3)
(include "src.scm")
(test-section "with non-empty list")
(test "find the K'th element of a list"
  'c (lambda () (element-at '(a b c d e) 3)))
(test-section "with empty list")
(test "return null"
  '() (lambda () (element-at '() 3)))
(test-section "index over length of list")
(test "return null"
  '() (lambda () (element-at '(1 2) 3)))
(test-end)
