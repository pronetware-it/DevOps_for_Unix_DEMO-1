FROM ubuntu:18.04
RUN apt-get update && apt-get install -y apache2

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

COPY ./ /usr/local/apache2/htdocs/

EXPOSE 80 CMD [“apache2ctl”, “-D”, “FOREGROUND”]
