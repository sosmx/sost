Sample Application with Python and Flask
========================================

Running Locally
---------------

```sh
virtualenv
. bin/activate
pip install -r requirements.txt
python app.py
```

Deploying on Appsdeck
---------------------

Create an application on https://appsdeck.eu, then:

```
git remote add appsdeck git@appsdeck.eu:<name_of_your_app>.git
git push appsdeck master
```

And that's it!

The application is running at this url: https://sample-python-flask.appsdeck.eu/
