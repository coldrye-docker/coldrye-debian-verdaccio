FROM coldrye/debian-nodejs:4-x-testing-latest

MAINTAINER Carsten Klein <trancesilken@gmail.com>

RUN set -x \
    && npm install -g --unsafe verdaccio sinopia-htpasswd \
    && npm cache clean \
    && mkdir -p /var/storages/npm

ADD ["conf/config.yaml", "/var/storages/npm/"]

VOLUME ["/var/storages/npm"]

EXPOSE 4873/tcp

CMD ["verdaccio", "-c", "/var/storages/npm/config.yaml"]

