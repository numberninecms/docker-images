# PHP
ARG PHP_VERSION=8.2

FROM williarin/php:${PHP_VERSION}-fpm-dev

RUN apk add --no-cache \
    wget \
    curl \
    openssl \
    git \
    ;

RUN apk --no-cache add \
    php82-exif \
    php82-pecl-apcu \
    php82-pecl-redis \
    php82-sysvsem \
    ;

# Composer
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /tmp
COPY --from=composer /usr/bin/composer /usr/bin/composer
RUN find /tmp -type d -exec chmod -v 1777 {} +

# Cachetools
RUN set -eux; \
    wget -O cachetool https://github.com/gordalina/cachetool/releases/latest/download/cachetool.phar; \
    chmod +x cachetool; \
    mv cachetool /usr/local/bin/cachetool

# Make
COPY --from=alpine/make:latest /usr/bin/make /usr/bin/make
