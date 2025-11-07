.PHONY: setup run fmt test

setup:
	pip install -r requirements.txt

run:
	streamlit run app.py

fmt:
	python -m pip install ruff
	ruff check --fix .

test:
	pytest -q
