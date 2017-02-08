# GitBook Server in Docker

## Introduction

Run gitbook without installing nodejs or anything.

The [container](https://hub.docker.com/r/raccoongang/gitbook/) is based on Ubuntu 16.04 and gitbook 2.3.0

## Usage

```
sudo mkdir /srv/gitbook
sudo docker run -d -p 4000:4000 -v /srv/gitbook:/gitbook raccoongang/gitbook:2.3.0
```
