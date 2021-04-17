.PHONY: build
.PHONY: test
.PHONY: testWatch
.PHONY: testAll

build:
	stack build

test:
	stack test --test-arguments="--skip goldBachList'"

testWatch:
	stack test --file-watch --test-arguments="--skip goldBachList'"

testAll:
	stack test
