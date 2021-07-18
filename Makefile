.PHONY: all

DOCKER_RUN_TEST_OPTIONS = --user www-data -w /home/www-data --rm

all: php test-php

.PHONY: php php7 php8
php: php7 php8

php7:
	docker build -t numberninecms/php:7.4-fpm php/7.4-fpm
	docker build -t numberninecms/php:7.4-fpm-dev php/7.4-fpm-dev

php8:
	docker build -t numberninecms/php:8.0-fpm php/8.0-fpm
	docker build -t numberninecms/php:8.0-fpm-dev php/8.0-fpm-dev

.PHONY: test-php test-php7 test-php8
test-php: test-php7 test-php8

test-php7:
	docker run $(DOCKER_RUN_TEST_OPTIONS) numberninecms/php:7.4-fpm bash -c "php -v | grep '7\.4'"
	docker run $(DOCKER_RUN_TEST_OPTIONS) numberninecms/php:7.4-fpm-dev bash -c "php -v | grep '7\.4' && php -v | grep 'Xdebug v3'"

test-php8:
	docker run $(DOCKER_RUN_TEST_OPTIONS) numberninecms/php:8.0-fpm bash -c "php -v | grep '8\.0'"
	docker run $(DOCKER_RUN_TEST_OPTIONS) numberninecms/php:8.0-fpm-dev bash -c "php -v | grep '8\.0' && php -v | grep 'Xdebug v3'"

.PHONY: deploy deploy7 deploy8
deploy: deploy7 deploy8

deploy7:
	docker push numberninecms/php:7.4-fpm
	docker push numberninecms/php:7.4-fpm-dev

deploy8:
	docker push numberninecms/php:8.0-fpm
	docker push numberninecms/php:8.0-fpm-dev
