FROM debian:stretch
LABEL maintainer="Super8 Developers <dev@super8.org>"
LABEL description="Dockerised Super8Core, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
