# coldrye-debian-verdaccio

[![coldrye/debian-verdaccio](http://dockeri.co/image/coldrye/debian-verdaccio)](https://hub.docker.com/r/coldrye/debian-verdaccio/)


## Description

This packages the most rececent verdaccio from npm based on coldrye/debian-nodejs:4-x-*-latest.


## Image Releases

Images are released for the following debian releases.

- jessie
- testing (stretch)

See https://hub.docker.com/r/coldrye/debian-verdaccio/tags/ for a complete list.


## Usage

While you can use this as it is and have a working verdaccio installation, one might consider that
existing data needs to be stored on a persistent volume.

The persistent volume must be mounted inside the container on ``/var/storages/npm`` and must have the following layout

```
config.yaml    // one must copy the configuration file from conf/config.yaml on first installment
htpasswd       // optional, required for basic auth
```

After which the container can be created using

```
docker create -p 4873:4873/tcp -v $(pwd)/data:/var/storages/npm coldrye/debian-verdaccio:<TAG>
```

