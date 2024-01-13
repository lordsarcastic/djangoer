up:
	@docker compose up

bash:
	@docker compose run --rm app bash

build:
	@pipenv install --dev
	@docker compose build

build-up:
	@docker compose up --build

createsuperuser:
	@docker compose run --rm app python manage.py createsuperuser

down:
	@docker compose down --remove-orphans

flush-db:
	@docker compose run --rm app python manage.py flush
	@make down

format:
	@pipenv run isort . && pipenv run black .

install:
	@pipenv install --dev

lint:
	@isort .
	@black .

makemigrations:
	@docker compose run --rm app python manage.py makemigrations

migrate:
	@docker compose run --rm app python manage.py migrate

shell:
	@docker compose run --rm app python manage.py shell

test:
	@docker compose run --rm app python manage.py test

up-d:
	@docker compose up -d