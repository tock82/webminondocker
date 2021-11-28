FROM debian:buster-slim

RUN apt-get update \
    && apt-get upgrade -y \
    && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y apt-utils nano procps ca-certificates wget apt-transport-https gnupg1 \
    && echo "deb https://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list \
    && cd /tmp \
    && wget https://download.webmin.com/jcameron-key.asc \
    && apt-key add jcameron-key.asc \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y webmin

EXPOSE 10000/tcp
