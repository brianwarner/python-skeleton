# Python skeleton project

This project provides a basic skeleton for simple Python projects. It uses a
Makefile to simplify the process of setting up and running your Python project
in a Python virtual environment. It also includes a linting make target.

## Setup

To use this skeleton, copy `Makefile`, `requirements.txt`, `main.py`, and
`.gitignore` into a new project root. Add any dependencies to
`requirements.txt` and ensure `make` is installed on your Mac or Linux system.

This Makefile does not currently run well on Windows.

## Running

To run, navigate to the project root and type `make run`. This will set up a
virtual environment, install all dependencies, and run `main.py`. When you
change the contents of `requirements.txt`, any new packages will be installed.

## Linting

To lint your project, navigate to the project root and type `make lint`.

## Cleaning

To remove the virtual environment and any compiled bytecode, navigate to the
project root and type `make clean`.

