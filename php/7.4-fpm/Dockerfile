ARG PHP_VERSION=7.4

FROM williarin/php:${PHP_VERSION}-fpm

RUN apk add --no-cache \
        php7-exif \
        php7-apcu \
        php7-redis \
    ;

RUN set -eux; \
    wget -O cachetool https://github.com/gordalina/cachetool/releases/latest/download/cachetool.phar; \
    chmod +x cachetool; \
    mv cachetool /usr/local/bin/cachetool
