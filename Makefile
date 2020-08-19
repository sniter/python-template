VENV=venv
PYTHON=$(VENV)/bin/python
PIP=$(VENV)/bin/pip
PRE_COMMIT=$(VENV)/bin/pre-commit
JUPYTER=$(VENV)/bin/jupyter

ENV ?= dev

include envs/$(ENV).mk

init: venv pip .env deps enable_hooks

pip:
	$(PIP) install --upgrade pip

.env:
	cp example.env .env

venv:
	python3 -m virtualenv $(VENV)

deps:
	$(PIP) install -r $(DEPS)

enable_hooks:
	$(PRE_COMMIT) install

lint:
	$(PRE_COMMIT) run

sync:
	rsync -vazhRP --stats --filter="merge filter.txt" ./ $(dest)

notebook:
	$(JUPYTER) notebook
