FROM ubuntu:20.04
MAINTAINER admin@evoke.net
RUN apt-get update
RUN apt-get install nginx -y
COPY index.html /var/www/html
ENTRYPOINT tail -f /dev/null
RUN service nginx start
WORKDIR /var/www/html 
