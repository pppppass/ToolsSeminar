default : test
.PHONY: default

test : interface.py k_means.py key.py
	@./interface.py > out.tmp
	@cp k_means.py k_means.py.bak
	@cp key.py k_means.py
	@./interface.py > stdout.tmp
	@cp k_means.py.bak k_means.py
	diff -ZB out.tmp stdout.tmp
.PHONY: run

run : interface.py k_means.py
	./interface.py
.PHONY: run

key : interface.py key.py
	@cp k_means.py k_means.py.bak
	@cp key.py k_means.py
	./interface.py
	@cp k_means.py.bak k_means.py
.PHONY: key
