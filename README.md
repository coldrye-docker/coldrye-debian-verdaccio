# coldrye-debian-sinopia

[![coldrye/debian-sinopia](http://dockeri.co/image/coldrye/debian-sinopia)](https://hub.docker.com/r/coldrye/debian-sinopia/)


## Description

This packages sinopia using the most recent release from npm based on coldrye/debian-nodejs:4-x-*-latest.


## Image Releases

Images are released for the following debian releases.

- jessie
- testing (stretch)

See https://hub.docker.com/r/coldrye/debian-sinopia/tags/ for a complete list.


## Usage

While you can use this as it is and have a working sinopia installation, one might consider that
existing data needs to be stored on a persistent volume.

The persistent volume must be mounted inside the container on ``/var/storages/npm`` and must have the following layout

```
sinopia.yaml   // one must copy the configuration file from conf/sinopia.yaml on first installment
htpasswd       // optional, required for basic auth
```

After which the container can be created using

```
docker create -P -v ./npm:/var/storages/npm coldrye/debian-sinopia:1-4-x-<jessie|testing>-latest
```


## Notes

- we are using the verdaccio/verdaccio fork since the original has outdated dependencies which no longer compile

