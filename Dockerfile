FROM alpine:latest

RUN  apk update && apk upgrade && \
     apk add apache2 && \
     rm -rf /var/cache/apk/*

WORKDIR /var/www/localhost/htdocs
COPY  . /var/www/localhost/htdocs

EXPOSE 80

CMD  [ "/usr/sbin/httpd", "-D", "FOREGROUND"]
