ARG PHP_VERSION=8.2

FROM williarin/php:${PHP_VERSION}-fpm

RUN apk add --no-cache \
    wget \
    openssl \
    ;

RUN apk --no-cache add \
    php82-exif \
    php82-pecl-apcu \
    php82-pecl-redis \
    php82-sysvsem \
    ;

RUN set -eux; \
    wget -O cachetool https://github.com/gordalina/cachetool/releases/latest/download/cachetool.phar; \
    chmod +x cachetool; \
    mv cachetool /usr/local/bin/cachetool
