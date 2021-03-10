ARG PHP_VERSION=8.0

FROM williarin/php:${PHP_VERSION}-fpm

RUN apk add --no-cache \
    php8-exif \
    php8-apcu \
    php8-redis \
    ;

RUN set -eux; \
    wget -O cachetool https://github.com/gordalina/cachetool/releases/latest/download/cachetool.phar; \
    chmod +x cachetool; \
    mv cachetool /usr/local/bin/cachetool
