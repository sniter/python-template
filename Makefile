VENV=venv
PYTHON=$(VENV)/bin/python
PIP=$(VENV)/bin/pip
PRE_COMMIT=$(VENV)/bin/pre-commit

ENV ?= dev

include envs/$(ENV).mk

venv:
	virtualenv -p `which python3` $(VENV)

deps:
	$(PIP) install -r $(DEPS)

lint:
	$(PRE_COMMIT) run
