FROM debian:buster-slim

RUN /bin/bash
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y curl wget apt-transport-https \
    && echo "deb https://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list \
    && cd /tmp \
    && wget https://download.webmin.com/jcameron-key.asc \
    && apt-key add jcameron-key.asc \
    && apt-get update \
    && apt-get install webmin

EXPOSE 10000/tcp
