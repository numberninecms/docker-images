# PHP
ARG PHP_VERSION=8.1

FROM williarin/php:${PHP_VERSION}-fpm-dev

RUN apk add --no-cache \
    curl \
    openssl \
    git \
    php81-exif \
    php81-pecl-apcu \
    php81-pecl-redis \
    php81-sysvsem \
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
