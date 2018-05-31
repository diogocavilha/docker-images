FROM phusion/baseimage:latest
MAINTAINER Diogo Alexsander Cavilha <diogocavilha@gmail.com>

ARG DEBIAN_FRONTEND=noninteractive
ARG LC_ALL=C.UTF-8

CMD ["/sbin/my_init"]

RUN sed -i 's#http://archive.ubuntu.com#http://ubuntu.c3sl.ufpr.br#g' /etc/apt/sources.list

RUN add-apt-repository -y ppa:ondrej/php \
    && curl https://packagecloud.io/gpg.key | apt-key add - \
    && apt-get update && apt-get install -y --no-install-recommends \
    curl \
    zip \
    unzip \
    git \
    memcached \
    php-memcached \
    php-xdebug \
    php-redis \
    php-imagick \
    php7.2 \
    php7.2-cli \
    php7.2-common \
    php7.2-curl \
    php7.2-dev \
    php7.2-fpm \
    php-fdomdocument \
    php7.2-gd \
    php7.2-gmp \
    php7.2-intl \
    php7.2-mysql \
    php7.2-json \
    php7.2-xml \
    php7.2-mbstring \
    php7.2-xdebug \
    && curl -sS https://getcomposer.org/installer | php -- --filename=composer --install-dir=/usr/local/bin

# Clean
RUN apt-get purge -y --auto-remove && apt-get clean all && rm -rf /var/lib/apt/

RUN phpenmod mbstring
RUN service php7.2-fpm start

ENTRYPOINT /usr/sbin/php-fpm7.2 --nodaemonize
