FROM ubuntu:14.04

RUN apt-get update && \
    apt-get install -y php5 \
    php5-common \
    php5-dev \
    php5-cli \
    php5-fpm \
    php5-curl \
    php5-intl \
    php5-xdebug \
    php5-mcrypt \
    php5-redis \
    php5-gd \
    php5-mysql \
    php-dompdf \
    php5-memcached \
    php-patchwork-utf8 \
    php5-imagick \
    curl \
    libpcre3-dev \
    git-core && \
    git clone --depth 1 --branch phalcon-v2.0.9 https://github.com/phalcon/cphalcon.git && \
    cd cphalcon/build && ./install && \
    touch /etc/php5/mods-available/30-phalcon.ini && \
    echo "extension=phalcon.so" > /etc/php5/mods-available/30-phalcon.ini && \
    cd /etc/php5/fpm/conf.d/ && ln -s /etc/php5/mods-available/30-phalcon.ini . && \
    cd /etc/php5/cli/conf.d/ && ln -s /etc/php5/mods-available/30-phalcon.ini . && \
    cd /etc/php5/fpm/conf.d && ln -s /etc/php5/mods-available/mcrypt.ini . && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN service php5-fpm start
RUN rm -rf /var/lib/apt/lists/*
