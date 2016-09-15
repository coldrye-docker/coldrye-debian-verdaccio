FROM coldrye/debian-nodejs:4-x-testing-latest

MAINTAINER Carsten Klein <trancesilken@gmail.com>

RUN set -x \
    && npm install -g --unsafe verdaccio/verdaccio#v2.0.1 sinopia-htpasswd \
    && npm cache clean \
    && mkdir -p /var/storages/npm

ADD ["conf/config.yaml", "/var/storages/npm/"]

VOLUME ["/var/storages/npm"]

CMD ["verdaccio", "-c", "/var/storages/npm/config.yaml"]

