FROM php:8.0-apache
RUN docker-php-ext-install mysqli && docker-php-enable mysqli
RUN apt-get update && apt-get upgrade -y
COPY ./ /var/www/html
