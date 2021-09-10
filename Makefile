install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
test:
	python -m pytest -vv test_hello.py

lint:
	pylint --disable=R,C,E1120,W0613 hello.py
	
all: install lint test
