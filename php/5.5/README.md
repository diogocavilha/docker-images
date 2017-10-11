# PHP5.5 + php5.5-fpm + Phalcon Framework 2.0.9 + Composer

You must mount the `www.conf` file into the instantiated Docker Container at `/etc/php/5.5/fpm/pool.d/www.conf`

# Exposed Ports

The PHP-FPM process listens on container port `9000`.

# Building

Run the following command at the same directory where the `Dockerfile` is:

```bash
docker build -t tuxmate/php:5.5.9 .
```
