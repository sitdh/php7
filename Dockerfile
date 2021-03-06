FROM php:fpm-alpine

COPY ./conf.d/*.ini /usr/local/etc/php/conf.d/

RUN apk --update add libpng-dev

RUN docker-php-ext-install bcmath gd
RUN rm -rf /etc/apk/cache/* && rm -rf /var/cache/apk/*
