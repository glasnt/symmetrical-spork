FROM python:slim

ENV APP_HOME /app
ENV PORT 8080
EXPOSE $PORT
WORKDIR $APP_HOME

COPY . .

RUN pip install --upgrade pip Flask gunicorn

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 demo:app

