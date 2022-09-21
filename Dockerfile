FROM ubuntu:20.04
MAINTAINER admin@evoke.net
RUN apt-get update
RUN apt-get install nginx -y
COPY index.html /var/www/html
ENTRYPOINT service nginx start && bash
WORKDIR /var/www/html 
