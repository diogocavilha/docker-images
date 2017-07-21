FROM phusion/baseimage:latest

MAINTAINER Diogo Alexsander Cavilha <diogocavilha@gmail.com>

RUN apt-get update &&  apt-get install -y \
    apache2 \
    php7.0-mysql \
    libapache2-mod-php && \
    curl -s https://packagecloud.io/install/repositories/phalcon/stable/script.deb.sh | bash && \
    apt-get install -y php7.0-phalcon && \
    apt-get purge -y --auto-remove && apt-get clean all && rm -rf /var/lib/apt/

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

RUN /usr/sbin/a2ensite default-ssl
RUN /usr/sbin/a2enmod ssl
RUN /usr/sbin/a2enmod rewrite

EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]