FROM python:3.9.14-alpine

WORKDIR /app

RUN pip install pipenv

COPY . .

RUN pipenv install --system --deploy --ignore-pipfile

CMD uvicorn --host 0.0.0.0 main:app
