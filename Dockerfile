# pull official base image
FROM python:3.12-slim-bullseye

# set work directory
WORKDIR /usr/src/app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update

# install pipenv and project dependencies
RUN pip install -U pipenv
COPY Pipfile Pipfile.lock ./
RUN pipenv install --dev --system --deploy --ignore-pipfile

COPY . .