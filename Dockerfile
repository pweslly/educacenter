FROM php:7.2-apache
RUN docker-php-ext-install pdo pdo_mysql
COPY ./app /var/www/html
RUN a2enmod rewrite
EXPOSE 80
CMD ["apache2-foreground"]