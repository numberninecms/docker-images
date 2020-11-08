ARG PHP_VERSION=7.4

FROM kreait/php:${PHP_VERSION}-fpm-dev

RUN apk add --no-cache \
        php7-exif \
        php7-opcache \
        php7-apcu \
        php7-redis \
    ;

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /tmp

COPY --from=composer /usr/bin/composer /usr/bin/composer
RUN find /tmp -type d -exec chmod -v 1777 {} +

COPY --from=alpine/make:latest /usr/bin/make /usr/bin/make
