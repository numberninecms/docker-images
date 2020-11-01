ARG PHP_VERSION=7.4

FROM kreait/php:${PHP_VERSION}-fpm as php

RUN apk add --no-cache \
        php7-exif \
        php7-opcache \
    ;

FROM kreait/php:${PHP_VERSION}-fpm-dev as dev

RUN apk add --no-cache \
        php7-exif \
        php7-opcache \
    ;

