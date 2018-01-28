default : test
.PHONY: default

test : interface.py trainer.py key.py
	@./interface.py > out.tmp
	@cp trainer.py trainer.py.bak
	@cp key.py trainer.py
	@./interface.py > stdout.tmp
	@cp trainer.py.bak trainer.py
	diff -ZB out.tmp stdout.tmp
.PHONY: run

run : interface.py trainer.py
	./interface.py
.PHONY: run

key : interface.py key.py
	@cp trainer.py trainer.py.bak
	@cp key.py trainer.py
	./interface.py
	@cp trainer.py.bak trainer.py
.PHONY: key
