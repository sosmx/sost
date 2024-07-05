
FROM python:3.8.2


RUN apt-get update && apt-get install --yes unzip pipenv


WORKDIR /usr/src/app


COPY ./ /usr/src/app/


RUN unzip vcv-master.zip

# قفل الحزم باستخدام pipenv
RUN pipenv lock

# تثبيت الحزم المحددة في Pipfile.lock
RUN pipenv install --deploy --ignore-pipfile

# تعيين الأمر الافتراضي لتشغيل التطبيق
CMD pipenv run python app.py
