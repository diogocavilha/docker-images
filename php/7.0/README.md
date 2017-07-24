![Image](https://github.com/diogocavilha/docker-images/blob/master/assets/images/php-phalcon-composer-header.jpg)

### PHP7.0 + php7.0-fpm + Phalcon Framework 3.0.1 + Composer

### Downloading
```bash
docker pull tuxmate/php:7.0
```

The docker image can be found at [dockerhub](https://hub.docker.com/r/tuxmate/php/).

You must mount the `www.conf` file into the instantiated Docker Container at `/etc/php/7.0/fpm/pool.d/www.conf`

### Exposed Ports

The PHP-FPM process listens on container port `9000`
