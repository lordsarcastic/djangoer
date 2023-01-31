# djangoer
A production-ready template for Django applications

## How to use: For mere mortals
### Requirements:
- Make, Docker and Docker Compose


### Begin
#### Running the application
- Clone the repo
- `cd` into the repo
- Checkout to the `dev` branch 
- Duplicate the file named ".env.example", rename the new copy to ".env".
- Perform migrations with `make migrate`
- Create your superuser account with `make createsuperuser`. Fill in required details. Note that your password won't display on the screen. Type blindly and trust everything to work.
- To start the server, run `make up`
- You can start making requests by visiting [http://127.0.0.1:8000](http://127.0.0.1:8000)


*For subsequent starting of the server, perhaps after a pull or a continuation of work:*
- `cd` into the repo
- Run `pipenv shell` to activate the virutal environment
- Perform migrations for the DB with `docker compose run web python manage.py migrate`
- To start the server, run `make up`
- You can start making requests by visiting [http://127.0.0.1:8000](http://127.0.0.1:8000)

*Note:*
There are tons of helps in the [Contributions section](CONTRIBUTIONS/README.md). Check it if you need help

## Got problems?
Raise an issue.
