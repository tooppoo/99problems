
index=$(printf %02d $1)

new_dir="problem$index"
mkdir $new_dir

touch "$new_dir/src.scm"

cat << EOS > "$new_dir/test.scm"
(use gauche.test)
(test-start :problem-$index)
(include "src.scm")
(test-section "SECTION")
(test "TEST CASE"
  EXPECTED (lambda () TEST_BODY))
(test-end)
EOS