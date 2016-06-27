FROM coldrye/debian-nodejs:4-x-testing-latest

MAINTAINER Carsten Klein <trancesilken@gmail.com>

RUN set -x \
    && npm install -g --unsafe verdaccio/verdaccio sinopia-htpasswd \
    && npm cache clean \
    && mkdir -p /var/storages/npm

ADD ["conf/sinopia.yaml", "/var/storages/npm/"]

VOLUME ["/var/storages/npm"]

CMD ["sinopia", "-c", "/var/storages/npm/sinopia.yaml"]

