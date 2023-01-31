up:
	@docker compose up

bash:
	@docker compose run app bash

build:
	@docker compose build

build-up:
	@docker compose up --build

createsuperuser:
	@docker compose run app python manage.py createsuperuser

down:
	@docker compose down --remove-orphans

flush-db:
	@docker compose run app python manage.py flush
	@make down

install:
	@pipenv install

lint:
	@isort .
	@black .

makemigrations:
	@docker compose run app python manage.py makemigrations

migrate:
	@docker compose run app python manage.py migrate

shell:
	@docker compose run app python manage.py shell

test:
	@docker compose run app python manage.py test

up-d:
	@docker compose up -d