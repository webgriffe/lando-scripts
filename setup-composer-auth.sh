#!/usr/bin/env bash

if [ -f /user/.composer/auth.json ]; then
    cp /user/.composer/auth.json /var/www/.composer/auth.json
    cp /user/.composer/config.json /var/www/.composer/config.json
    chown www-data:www-data /var/www/.composer/auth.json
    chown www-data:www-data /var/www/.composer/config.json
    echo "Composer auth.json has been set up"
fi
