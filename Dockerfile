FROM php:7.4.2-apache
RUN pecl install xdebug && docker-php-ext-enable xdebug \
    && echo "\n\
    xdebug.remote_host = docker.for.mac.localhost \n\
    xdebug.default_enable = 1 \n\
    xdebug.remote_autostart = 1 \n\
    xdebug.remote_connect_back = 0 \n\
    xdebug.remote_enable = 1 \n\
    xdebug.remote_handler ="dbgp" \n\
    xdebug.remote_port =9000 \n\
    xdebug.remote_log = /var/www/html/xdebug.log \n\
    " >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini