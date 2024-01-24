up:
	@docker compose up

bash:
	@docker compose run --rm app bash

build:
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
	@docker compose run --rm app ruff format .
	@docker compose run --rm app ruff check . --fix --select I001

install:
	@pipenv install --dev

lint:
	@docker compose run --rm app ruff check .

migrations:
	@docker compose run --rm app python manage.py makemigrations

migrate:
	@docker compose run --rm app python manage.py migrate

shell:
	@docker compose run --rm app python manage.py shell

test:
	@docker compose run --rm app py.test

testcase:
	@docker compose run --rm app py.test $(test)

up-d:
	@docker compose up -d