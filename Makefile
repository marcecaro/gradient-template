

bootstrap:
	poetry install
	pre-commit install
	mypy --install-types

lint:
	poetry run -- pre-commit run --all-files

export:
	poetry run nbdev_export