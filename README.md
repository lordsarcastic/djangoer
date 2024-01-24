# djangoer
A production-ready template for Django applications

## Introduction
This Django template was created out of a need for consistent structure for projects with a setup that's easy to understand and use with as minimal additional setup as possible.

### How to use
Three commands and you're good to go:
- `cp .env.example .env`
- `make build`
- `make up`

A much detailed explanation is in the [How to use (fleshed-out)](#how-to-use-fleshed-out) section.

## Features
- Uses standard Django application structure. No folder complexities to be navigated through.
- Drop-in template, two commands and you have all the features at your fingertips: `make build && make up`
- Built-in simple Docker set up that just works!
- Support for .env files and typed environmental variables using Pydantic. Try running your application without needed environment variables and it crashes immediately, fail-fast without future tears.
- First class support for Postgres. Just add `DATABASE_URL` in your `.env` file.
- Uses lightning fast Ruff for both formatting and linting. Drop-in replacement for Black and Isort and 10 - 100x faster too!
- Easy way to run commands using `make`. Run migrations with `make migrate`, start application with `make up`. No need to memorize verses of commands.
- Included GitHub workflow for running tests
- Environment based settings file
- Everything you need to start implementing your first API.

### What is hoped to be achieved
- Simplicity; no need for bloated classes and huge utils that you'll likely never use. Everything here should be very much needed in most projects
- Low barrier for entry; a template that is easy to start with and does not seem too advanced for beginners to use
- Production-ready; the above does not remove the important fact that this should be always production-ready without obvious faults
- Consistency; a smell for codebases is you not having a 'knowing' of where certain code is located. A wanted structure is one that's easy to navigate

### What is not hoped to be achieved
- Utility dump; this template will not be where all sorts of utilities are dumped because, 'why not?'.
- I'm out of points, sorry. This kind of stuff should be like 3 points or so, but then...

## How to use (Fleshed out)
### Requirements:
- Make, Docker and Docker Compose

### Running the application with Docker (recommended)
- Clone the repo
- `cd` into the repo
- Duplicate the file named ".env.example", rename the new copy to ".env".
- Edit the content of the `.env` file as you want. At this point you'll also want to edit the
`environment` section of the `postgres` service in the `docker-compose.yml` file to
reflect your choice of database. Ensure you correlate this change with the content
of the `.env` file.
- Perform migrations with `make migrate`
- Create your superuser account with `make createsuperuser`. Fill in required details. Note that your password won't display on the screen. Type blindly and trust everything to work.
- To start the server, run `make up`
- You can start making requests by visiting [http://127.0.0.1:8000](http://127.0.0.1:8000)
- Edit the template as you want for your app

### Running the application outside of Docker (not recommended, not even remotely)
- Create a database with Postgres through the `psql` command. Can't remember
the whole steps and I'm too tired to google it, it's why I said you should
use Docker.
- Duplicate the file named ".env.example", rename the new copy to ".env".
- Edit the content of the `.env` file as you want, especially to
reflect your choice of database. Ensure you correlate this change with the results of
of the first step
- Perform migrations with `python manage.py migrate`. You still don't want to use Docker?!
- To start the server, run `gunicorn --bind 0.0.0.0:8000 config.wsgi:application`.
Lol, I told you to use Docker.
- You can start making requests by visiting [http://127.0.0.1:8000](http://127.0.0.1:8000)
- Edit the template as you want for your app (switch to Docker)

## Glossary
This section contains a list of commonly needed helps while working on this project.

Majority of the commands you'll need are in the Makefile and can be run as:
```
make <command>
```

### All needed commands currently in the Makefile
- up: start up the containers
- bash: starts a bash shell for the application
- build: builds the containers only
- build-up: builds and starts the containers
- createsuperuser: spawns the Django app to create a superuser
- down: stops the containers
- format: runs isort and black on the codebase to make it fine
- flush-db: empties the database and begins the DB from scratch
- install: installs all dependencies in a virtual env locally
- lint: runs ruff to sort import and format the code
- migrations: creates migrations based on DB schema
- migrate: runs the created migrations
- resetdb: resets the database, deletes everything including the database itself
- run-command: runs a command in the Django app context. For example, `make run-command command="python manage.py test"`
- shell: spawns a shell within the Django app context. The same as `manage.py shell`.
- test: runs the test suite using pytest
- testcase: runs a single test case. For example, `make testcase testcase="tests/test_models.py::TestUserModel::test_user_can_be_created"`
- up-d: starts up the container without logs

### How do I run commands in Docker?
First check the list above if the command you need is there. If it is, you can run it as `make <command>`. For example, to run tests, I can do: `make test`. If it isn't, continue reading.

Ideally, you should be using `make run-command command="<command>"`. For example, to run tests, I can do: `make run-command command="python manage.py test"`.

However, if you're not using make, you can run commands in Docker using the syntax: `docker compose run <name-of-container-volume> <command>`. For example, to run tests, I can do: `docker compose run web python manage.py test`.

### How do I enable auto-imports for libraries on VSCode
- Outside of docker, run `make install`
- Start a virtual environment in the root folder by running `pipenv shell`
- On your VSCode, at the bottom right corner, you'll see a Python version, click on it and select the Python interpreter created from your virtual environment.
You can continue your work inside docker.

## Change Log
### 31-01-2023
- Initial release
- Added support for Postgres
- Added support for .env files
- Added support for typed environmental variables using Pydantic
- Added Docker support

### 20-02-2023
- Added Make command for formatting and linting

### 13-01-2024
- Added auto removal of containers when running one-off commands

### 24-01-2024
- Trim down Dockerfile to reduce needless steps and upgrade python version
- Added extensions for resetting db
- Added command to run any command on app shell
- Replaced test runner with pytest
- Renamed `makemigrations` command to `migrations`
- Removed black and ruff
- Upgraded pydantic
- Replaced linter and formatter with ruff
- Bumped Python version to 3.12
- Added environment based settings file
- Added changelog



## Got problems?
Raise an issue.

## FAQs
1.
    Q: Why do you insist I use Docker?

    A: It is actually easier to use and setup
    than the alternative. You can also easily
    switch to the alternative if you want to.