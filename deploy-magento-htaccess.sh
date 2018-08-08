#!/usr/bin/env bash

if [ ! -f "${LANDO_WEBROOT}/.htaccess" ] && [ ! -z ${MAGENTO_HTACCESS+x} ] && [ -e "${LANDO_MOUNT}/${MAGENTO_HTACCESS}" ]; then
    cp ${LANDO_MOUNT}/${MAGENTO_HTACCESS} ${LANDO_WEBROOT}
    echo "Deployed Magento .htaccess from ${LANDO_MOUNT}/${MAGENTO_HTACCESS}"
fi
