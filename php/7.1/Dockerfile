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
    git \
    memcached \
    php-memcached \
    php-xdebug \
    php-redis \
    php-imagick \
    php7.1 \
    php7.1-cli \
    php7.1-common \
    php7.1-curl \
    php7.1-dev \
    php7.1-fpm \
    php-fdomdocument \
    php7.1-gd \
    php7.1-gmp \
    php7.1-intl \
    php7.1-mysql \
    php7.1-json \
    php7.1-xml \
    php7.1-mbstring \
    && curl -sS https://getcomposer.org/installer | php -- --filename=composer --install-dir=/usr/local/bin \
    && curl -s https://packagecloud.io/install/repositories/phalcon/stable/script.deb.sh | bash \
    && apt-get install -y php7.1-phalcon

# Clean
RUN apt-get purge -y --auto-remove && apt-get clean all && rm -rf /var/lib/apt/

RUN phpenmod mbstring
RUN service php7.1-fpm start

ENTRYPOINT /usr/sbin/php-fpm7.1 --nodaemonize
