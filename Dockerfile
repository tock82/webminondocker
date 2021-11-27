FROM debian:buster-slim
RUN sudo apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y curl wget apt-transport-https \
    && echo "deb https://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list \
    && apt-key adv --fetch-keys https://www.webmin.com/jcameron-key.asc \
    && echo "deb https://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list
    && 
EXPOSE 10000/tcp
