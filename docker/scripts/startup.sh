#!/bin/sh

exec install-apache.sh
exec install-php.sh

#mkdir -p /run/apache2

#apk add --no-cache $SERVER_TYPE

#apk add --no-cache php$PHP_VERSION

#for module in $PHP_MODULES
#do
#    apk add --no-cache php$PHP_VERSION-$module
#done

#rm -rf /var/cache/apk/*


#mkdir -p /etc/apache2/sites.d
#cp /data/conf/apache2/httpd.conf /etc/apache2/httpd.conf
#cp /data/conf/apache2/sites.d/site.conf /etc/apache2/sites.d/$APPLICATION_NAME.conf

exec httpd -D FOREGROUND






