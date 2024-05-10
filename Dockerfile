FROM php:8.0-apache

# Install mysqli extension
RUN docker-php-ext-install mysqli

# Enable mysqli extension
RUN a2enmod rewrite

# Update package lists and upgrade existing packages
RUN apt-get update && apt-get upgrade -y

# Copy application files into the container
COPY ./ /var/www/html
