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

Deploying on Scalingo
---------------------

Create an application on https://scalingo.com, then:

```
scalingo -a my-app git-setup 
git push scalingo master
```

And that's it!

The application is running at this url: https://sample-python-flask.scalingo.io/
