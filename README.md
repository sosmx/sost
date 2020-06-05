# Sample Application with Python and Flask

## Deploying on Scalingo

Create an application on https://scalingo.com, then:

```
scalingo -a my-app git-setup
git push scalingo master
```

And that's it!

The application is running at this url: https://sample-python-flask.scalingo.io/

## Running Locally

The Docker solution does not fully work yet:

```sh
docker-compose run sample-python-flask bash
pipenv shell
pipenv install
python ./app.py
```
