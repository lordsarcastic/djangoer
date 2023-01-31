# Glossary
This section contains a list of commonly needed helps while working on this project.

Majority of the commands you'll need are in the Makefile and can be run as:
```
make <command>
```

## All needed commands currently in the Makefile
- up: start up the containers
- bash: starts a bash shell for the application
- build: builds the containers only
- build-up: builds and starts the containers
- createsuperuser: spawns the Django app to create a superuser
- down: stops the containers
- flush-db: empties the database and begins the DB from scratch
- install: installs all dependencies in a virtual env locally
- lint: runs isort to sort imports and black for formatting
- makemigrations: creates migrations based on DB schema
- migrate: runs the created migrations
- shell: spawns a shell within the Django app context.
The same as `manage.py shell`.
- test: runs the test suite
- up-d: starts up the container without logs

## How do I run commands in Docker?
You use the syntax: `docker compose run <name-of-container-volume> <command>`. For example, to run tests, I can do: `docker compose run web python manage.py test`.

## How do I make migrations
Use the format [here](#how-do-i-run-commands-in-docker)

## How do I run migrations on the database
Use the format [here](#how-do-i-run-commands-in-docker)

## How do I enable auto-imports for libraries on VSCode
- Outside of docker, run `make install`
- Start a virtual environment in the root folder by running `pipenv shell`
- On your VSCode, at the bottom right corner, you'll see a Python version, click on it and select the Python interpreter created from your virtual environment.
You can continue your work inside docker