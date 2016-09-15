FROM coldrye/debian-nodejs:4-x-jessie-latest

MAINTAINER Carsten Klein <trancesilken@gmail.com>

RUN set -x \
    && npm install -g --unsafe verdaccio/verdaccio sinopia-htpasswd \
    && npm cache clean \
    && mkdir -p /var/storages/npm

ADD ["conf/config.yaml", "/var/storages/npm/"]

VOLUME ["/var/storages/npm"]

CMD ["sinopia", "-c", "/var/storages/npm/config.yaml"]

