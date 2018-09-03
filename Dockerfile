FROM docker:stable-dind

LABEL maintainer "David Clutter <cluttered.code@gmail.com>"

RUN apk update &&\
    apk upgrade --no-cache &&\
    apk add --no-cache py-pip &&\
    pip install --no-cache-dir docker-compose
