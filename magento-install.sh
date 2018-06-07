#!/usr/bin/env bash

mysql -h ${DB_HOST} -u ${DB_USER} -p${DB_PASS} ${DB_NAME} -e "SHOW TABLES;" | grep -q "core_config_data"
MAGENTO_NOT_INSTALLED=$?
if [ "${MAGENTO_NOT_INSTALLED}" != "0" ]; then
    rm -f -- ${LANDO_WEBROOT}/app/etc/local.xml
    cd $LANDO_MOUNT && \
    ${MAGERUN} install \
        --dbHost="$DB_HOST" \
        --dbUser="$DB_USER" \
        --dbPass="$DB_PASS" \
        --dbName="$DB_NAME" \
        --useDefaultConfigParams=yes \
        --baseUrl="https://$LANDO_APP_NAME.lndo.site/" \
        --installationFolder="$LANDO_WEBROOT" \
        --noDownload \
        --forceUseDb
else
    echo "Magento is already installed"
fi
