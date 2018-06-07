#!/usr/bin/env bash

if test -f /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini; then
    mv /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini.disabled && echo "xDebug disabled";
else
    mv /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini.disabled /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini && echo "xDebug enabled";
fi
/etc/init.d/apache2 reload
