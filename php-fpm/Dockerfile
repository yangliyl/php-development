FROM php:7.2-fpm
MAINTAINER li.yang <li.yang@1905.com>
ENV REDIS_VERSION=4.1.1
ENV SWOOLE_VERSION=4.2.7
RUN pecl bundle -d /usr/src/php/ext redis-$REDIS_VERSION \
  && pecl bundle -d /usr/src/php/ext swoole-$SWOOLE_VERSION \
  && rm -rf /usr/src/php/ext/redis-$REDIS_VERSION.tgz \
  && rm -rf /usr/src/php/ext/swoole-$SWOOLE_VERSION.tgz \
  && docker-php-ext-install mysqli pdo_mysql redis swoole
