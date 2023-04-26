# SPDX-License-Identifier: MIT
# Copyright Brian Warner

VENV=.venv
ACTIVATE=$(VENV)/bin/activate
INTERPRETER=$(VENV)/bin/python3

$(ACTIVATE): requirements.txt
	@python3 -m venv $(VENV)
	@$(INTERPRETER) -m pip install --upgrade pip
	@$(INTERPRETER) -m pip install wheel black flake8
	@$(INTERPRETER) -m pip install -r requirements.txt

lint: $(ACTIVATE)
	@$(INTERPRETER) -m black --exclude $(VENV) .
	@$(INTERPRETER) -m flake8 --exclude $(VENV) . --max-line-length 100


run: $(ACTIVATE)
	@$(INTERPRETER) ./main.py

clean:
	rm -rf $(VENV)
	find ./ -type f -name '*.pyc' -delete

vim: ts=8 noexpandtab
code: insertSpaces=false tabSize=4
