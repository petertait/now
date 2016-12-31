# php includes ubuntu && mbstring
FROM php:7.1.0-apache

# allow modrewrite
RUN a2enmod rewrite

# curl for custom plugins
RUN sudo apt-get install --assume-yes curl

# Add Kirby base
COPY . /var/www/html/

ADD phpinfo.php /var/www/html/
EXPOSE 80
