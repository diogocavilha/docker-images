FROM phusion/baseimage:latest
MAINTAINER Diogo Alexsander Cavilha <diogocavilha@gmail.com>

CMD ["/sbin/my_init"]

RUN apt-get update && apt-get install -y software-properties-common \
    python-software-properties \
    php7.0 \
    php7.0-common \
    php7.0-dev \
    php7.0-cli \
    php7.0-fpm \
    php7.0-curl \
    php7.0-intl \
    php7.0-mcrypt \
    php7.0-gd \
    php7.0-mysql \
    php7.0-mbstring \
    libapache2-mod-php \
    php-xdebug \
    php-redis \
    curl \
    git-core \
    zip \
    unzip && \
    curl -s https://packagecloud.io/install/repositories/phalcon/stable/script.deb.sh | bash && \
    apt-get install -y php7.0-phalcon && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    phpenmod mbstring && \
    service php7.0-fpm start

ENTRYPOINT /usr/sbin/php-fpm7.0 --nodaemonize

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
