#!/bin/sh

if [[ "$SERVER_TYPE" == "apache2" ]]; then

fi

mkdir -p /run/apache2

apk add --no-cache $SERVER_TYPE

mkdir -p /etc/apache2/sites.d
cp /data/conf/apache2/httpd.conf /etc/apache2/httpd.conf
cp /data/conf/apache2/sites.d/site.conf /etc/apache2/sites.d/$APPLICATION_NAME.conf