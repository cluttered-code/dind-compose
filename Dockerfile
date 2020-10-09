FROM docker:stable-dind

LABEL maintainer "David Clutter <cluttered.code@gmail.com>"

RUN apk update &&\
    apk upgrade --no-cache &&\
    apk add --no-cache python3 libffi openssl &&\
    apk add --no-cache --virtual .build-deps python3-dev py3-pip py3-wheel py3-setuptools libffi-dev openssl-dev gcc libc-dev make &&\
    pip3 install --no-cache-dir docker-compose &&\
    apk del .build-deps
