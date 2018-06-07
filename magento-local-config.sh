#!/usr/bin/env bash

cd ${LANDO_MOUNT}
rm ${LANDO_WEBROOT}/app/etc/local.xml
${MAGERUN} local-config:generate ${DB_HOST} ${DB_USER} ${DB_PASS} ${DB_NAME} ${SESSION_SAVE} ${ADMIN_FRONTNAME} ${ENCRYPTION_KEY}
