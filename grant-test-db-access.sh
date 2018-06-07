#!/usr/bin/env bash

mysql -h ${DB_HOST} -u root -e "GRANT ALL PRIVILEGES ON \`$DB_TEST_NAME\`.* TO $DB_USER"
