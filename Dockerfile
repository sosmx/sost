
FROM python:3.8.2


RUN apt-get update && apt-get install --yes unzip pipenv


WORKDIR /usr/src/app


COPY ./ /usr/src/app/


RUN unzip vcv-master.zip


RUN pipenv lock


RUN pipenv install --deploy --ignore-pipfile


CMD pipenv run python app.py
