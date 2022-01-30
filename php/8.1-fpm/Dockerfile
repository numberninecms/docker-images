ARG PHP_VERSION=8.1

FROM williarin/php:${PHP_VERSION}-fpm

RUN apk add --no-cache \
    wget \
    openssl \
    ;

RUN apk --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ add \
    php81-exif \
    php81-pecl-apcu \
    php81-pecl-redis \
    php81-sysvsem \
    ;

RUN set -eux; \
    wget -O cachetool https://github.com/gordalina/cachetool/releases/latest/download/cachetool.phar; \
    chmod +x cachetool; \
    mv cachetool /usr/local/bin/cachetool
