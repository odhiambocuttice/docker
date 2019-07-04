# start with a base image
FROM python:3.7

ENV PYTHONUNBUFFERED 1
# set working diretory
WORKDIR /code

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

 