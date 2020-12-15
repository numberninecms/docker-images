# NumberNine Docker images

## numberninecms/php

[Docker hub page](https://hub.docker.com/r/numberninecms/php)

This image is based on `[kreait/php](https://hub.docker.com/r/kreait/php)` with opcache, exif, apcu and redis PHP extensions added.

Tags:

* `7.4-fpm` with `Cachetool` to run on production server
* `7.4-fpm-dev` (with `xdebug 3.0` and `blackfire` extensions activated, `composer`, `make` and `Cachetool` available)
