LOCAL ?= 0
DEPLOY ?= 0
PUSH =
BUILDX = buildx
PLATFORM = --platform=linux/amd64,linux/arm64,linux/arm/v7

ifeq ($(DEPLOY),1)
	PUSH = --push
endif

ifeq ($(LOCAL),1)
	BUILDX =
	PLATFORM =
endif

DOCKER_RUN_TEST_OPTIONS = --user www-data -w /home/www-data --rm

.PHONY: all
all: php test-php

.PHONY: php php7 php8 php81 php82
php: php7 php8 php81 php82

php7:
	docker $(BUILDX) build $(PUSH) --no-cache $(PLATFORM) -t numberninecms/php:7.4-fpm php/7.4-fpm
	docker $(BUILDX) build $(PUSH) --no-cache $(PLATFORM) -t numberninecms/php:7.4-fpm-dev php/7.4-fpm-dev

php8:
	docker $(BUILDX) build $(PUSH) --no-cache $(PLATFORM) -t numberninecms/php:8.0-fpm php/8.0-fpm
	docker $(BUILDX) build $(PUSH) --no-cache $(PLATFORM) -t numberninecms/php:8.0-fpm-dev php/8.0-fpm-dev

php81:
	docker $(BUILDX) build $(PUSH) --no-cache $(PLATFORM) -t numberninecms/php:8.1-fpm php/8.1-fpm
	docker $(BUILDX) build $(PUSH) --no-cache $(PLATFORM) -t numberninecms/php:8.1-fpm-dev php/8.1-fpm-dev

php82:
	docker $(BUILDX) build $(PUSH) --no-cache $(PLATFORM) -t numberninecms/php:8.2-fpm php/8.2-fpm
	docker $(BUILDX) build $(PUSH) --no-cache $(PLATFORM) -t numberninecms/php:8.2-fpm-dev php/8.2-fpm-dev

.PHONY: test-php test-php7 test-php8 test-php81 test-php82
test-php: test-php7 test-php8 test-php81 test-php82

test-php7:
	docker run $(DOCKER_RUN_TEST_OPTIONS) numberninecms/php:7.4-fpm bash -c "php -v | grep '7\.4'"
	docker run $(DOCKER_RUN_TEST_OPTIONS) numberninecms/php:7.4-fpm-dev bash -c "php -v | grep '7\.4' && php -v | grep 'Xdebug v3'"

test-php8:
	docker run $(DOCKER_RUN_TEST_OPTIONS) numberninecms/php:8.0-fpm bash -c "php -v | grep '8\.0'"
	docker run $(DOCKER_RUN_TEST_OPTIONS) numberninecms/php:8.0-fpm-dev bash -c "php -v | grep '8\.0' && php -v | grep 'Xdebug v3'"

test-php81:
	docker run $(DOCKER_RUN_TEST_OPTIONS) numberninecms/php:8.1-fpm bash -c "php -v | grep '8\.1'"
	docker run $(DOCKER_RUN_TEST_OPTIONS) numberninecms/php:8.1-fpm-dev bash -c "php -v | grep '8\.1' && php -v | grep 'Xdebug v3'"

test-php82:
	docker run $(DOCKER_RUN_TEST_OPTIONS) numberninecms/php:8.2-fpm bash -c "php -v | grep '8\.2'"
	docker run $(DOCKER_RUN_TEST_OPTIONS) numberninecms/php:8.2-fpm-dev bash -c "php -v | grep '8\.2' && php -v | grep 'Xdebug v3'"
