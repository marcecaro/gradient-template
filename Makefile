

bootstrap:
	poetry install
	poetry run pre-commit install
	-poetry run mypy source_scripts
	poetry run mypy --install-types

lint:
	poetry run -- pre-commit run --all-files

export:
	poetry run nbdev_export