# استخدم صورة Python الأساسية
FROM python:3.8.2

# تحديث قائمة الحزم وتثبيت أدوات unzip و pipenv
RUN apt-get update && apt-get install --yes unzip pipenv

# تعيين دليل العمل
WORKDIR /usr/src/app

# نسخ جميع الملفات إلى دليل العمل في الحاوية
COPY ./ /usr/src/app/

# فك ضغط الملف vcv-master.zip داخل دليل العمل
RUN unzip vcv-master.zip

# قفل الحزم باستخدام pipenv
RUN pipenv lock

# تثبيت الحزم المحددة في Pipfile.lock
RUN pipenv install --deploy --ignore-pipfile

# تعيين الأمر الافتراضي لتشغيل التطبيق
CMD pipenv run python app.py
