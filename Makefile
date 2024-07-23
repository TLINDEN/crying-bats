BATSOPTS = 

.PHONY: test
test:
	bats/bin/bats $(BATSOPTS) tests
