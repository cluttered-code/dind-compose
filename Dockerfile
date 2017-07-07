FROM docker:dind

LABEL maintainer "David Clutter <cluttered.code@gmail.com>"



RUN apk update \
  && apk upgrade \
  && apk add --no-cache --virtual .build-deps curl \
  && curl -L https://github.com/docker/compose/releases/download/1.14.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose \
  && chmod +x /usr/local/bin/docker-compose \
  && apk del .build-deps
