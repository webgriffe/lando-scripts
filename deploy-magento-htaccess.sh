#!/usr/bin/env bash

if [ ! -f "${LANDO_WEBROOT}/.htaccess" ]; then
    if [ ! -f "${LANDO_MOUNT}/vendor/magento/core-ee/.htaccess" ]; then
        cp ${LANDO_MOUNT}/vendor/magento/core-ee/.htaccess ${LANDO_WEBROOT}
        echo "Deployed Magento .htaccess from ${LANDO_MOUNT}/vendor/magento/core-ee/.htaccess"
    fi
    if [ ! -f "${LANDO_MOUNT}/vendor/magento/core/.htaccess" ]; then
        cp ${LANDO_MOUNT}/vendor/magento/core/.htaccess ${LANDO_WEBROOT}
        echo "Deployed Magento .htaccess from ${LANDO_MOUNT}/vendor/magento/core/.htaccess"
    fi
fi