# NumberNine Docker images

## PHP 7.4, 8.0 and 8.1 for production and development

### Presentation

These PHP images all come with `opcache`, `exif`, `apcu` and `redis` extensions.

Production version suffixed with `-fpm` are bundled with:

* APCu
* OPcache
* Cachetool (clear OPcache and ACPu from CLI)

Additionally, development versions suffixed with `-fpm-dev` are bundled with same tools as production image, and:

* Git
* Xdebug 3
* Composer 2
* GNU Make
* Blackfire probe _(7.4 and 8.0 only)_

### Available tags:

| Image  | Size |
| ------ | ---- |
| numberninecms/php:7.4-fpm     | [![](https://img.shields.io/docker/image-size/numberninecms/php/7.4-fpm)](https://hub.docker.com/r/numberninecms/php)     |
| numberninecms/php:7.4-fpm-dev | [![](https://img.shields.io/docker/image-size/numberninecms/php/7.4-fpm-dev)](https://hub.docker.com/r/numberninecms/php) |
| numberninecms/php:8.0-fpm     | [![](https://img.shields.io/docker/image-size/numberninecms/php/8.0-fpm)](https://hub.docker.com/r/numberninecms/php)     |
| numberninecms/php:8.0-fpm-dev | [![](https://img.shields.io/docker/image-size/numberninecms/php/8.0-fpm-dev)](https://hub.docker.com/r/numberninecms/php) |
| numberninecms/php:8.1-fpm     | [![](https://img.shields.io/docker/image-size/numberninecms/php/8.1-fpm)](https://hub.docker.com/r/numberninecms/php)     |
| numberninecms/php:8.1-fpm-dev | [![](https://img.shields.io/docker/image-size/numberninecms/php/8.1-fpm-dev)](https://hub.docker.com/r/numberninecms/php) |
