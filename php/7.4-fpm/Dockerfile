ARG PHP_VERSION=7.4

FROM kreait/php:${PHP_VERSION}-fpm

RUN apk add --no-cache \
        php7-exif \
        php7-opcache \
        php7-apcu \
        php7-redis \
    ;

COPY --from=composer /usr/bin/composer /usr/bin/composer
