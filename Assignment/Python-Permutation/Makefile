default : test
.PHONY: default

test : interface.py permutation.py key.py
	@./interface.py > out.tmp
	@cp permutation.py permutation.py.bak
	@cp key.py permutation.py
	@./interface.py > stdout.tmp
	@cp permutation.py.bak permutation.py
	diff -ZB out.tmp stdout.tmp
.PHONY: run

run : interface.py permutation.py
	./interface.py
.PHONY: run

key : interface.py key.py
	@cp permutation.py permutation.py.bak
	@cp key.py permutation.py
	./interface.py
	@cp permutation.py.bak permutation.py
.PHONY: key
