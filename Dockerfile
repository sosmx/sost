FROM python:3.8.2

RUN apt-get update && apt-get install --yes pipenv

WORKDIR /usr/src/app
