(use gauche.test)
(test-start :problem-2)
(include "src.scm")
(test-section "with non-empty list")
(test "find the last but one box of a list"
  '(c d) (lambda () (my-but-last '(a b c d))))
(test-section "with single element list")
(test "find the last but one box of a list"
  '(a) (lambda () (my-but-last '(a))))
(test-section "with empty list")
(test "find the last but one box of a list"
  '() (lambda () (my-but-last '())))
(test-end)
