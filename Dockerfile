FROM python:3.7-alpine
LABEL maintainer="Zopa Kolbasa"

ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY ./app /app

RUN adduser -D zopa_kolbasa
USER zopa_kolbasa