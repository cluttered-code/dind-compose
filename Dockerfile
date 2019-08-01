FROM docker:stable-dind

LABEL maintainer "David Clutter <cluttered.code@gmail.com>"

RUN apk update &&\
    apk upgrade --no-cache &&\
    apk add --no-cache --virtual .build-deps python-dev py-pip libffi-dev openssl-dev gcc libc-dev &&\
    pip install --no-cache-dir docker-compose &&\
    apk del .build-deps
