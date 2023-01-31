# djangoer
A production-ready template for Django applications

## Introduction
This Django template was created out of a need for consistent structure for projects with a setup that's easy to understand and use with as minimal additional setup as possible.

### What is hoped to be achieved
- Simplicity; no need for bloated classes and huge utils that you'll likely never use. Everything here should be very much needed in most projects
- Low barrier for entry; a template that is easy to start with and does not seem too advanced for beginners to use
- Production-ready; the above does not remove the important fact that this should be always production-ready without obvious faults
- Consistency; a smell for codebases is you not having a 'knowing' of where certain code is located. A wanted structure is one that's easy to navigate

### What is not hoped to be achieved
- Utility dump; this template will not be where all sorts of utilities are dumped because, 'why not?'.
- I'm out of points, sorry. This kind of stuff should be like 3 points or so, but then...

## How to use: For mere mortals
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


*Note:*
The majority of the docs is found in the [Contributions section](CONTRIBUTIONS/README.md).
Check it if (when) you need help.

## Got problems?
Raise an issue.

## FAQs
1.
    Q: Why do you insiste I use Docker?

    A: It is actually easier to use and setup

2.
    Q: Why do you use `master` as the default branch?

    A: To make the codebase look older and more matured than it actually is.
    Don't lie, you respect `master` more than `main` (what those NodeJS children love).
