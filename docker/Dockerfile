FROM alpine:3.6

MAINTAINER Franck Diomandé "fkdiomande@gmail.com"

ARG APPLICATION_NAME=myapp
ARG SERVER_NAME==dev.toto.fr
ARG SERVER_TYPE=apache2
ARG PHP_VERSION=7
ARG PHP_MODULES="php7-apache2 php7-redis php7-memcached"

COPY ./data /data/conf

ENV APPLICATION_NAME ${APPLICATION_NAME}

ENV SERVER_NAME ${SERVER_NAME}

ENV SERVER_TYPE ${SERVER_TYPE}

ENV PHP_VERSION ${PHP_VERSION}

ENV PHP_MODULES ${PHP_MODULES}


RUN apk add --no-cache ${SERVER_TYPE} php${PHP_VERSION} ${PHP_MODULES}

RUN if [ "$SERVER_TYPE" = "apache2" ] ; then \
mkdir -p /run/apache2 && \
mkdir -p /etc/apache2/sites.d && \
cp /data/conf/apache2/httpd.conf /etc/apache2/httpd.conf && \
chmod 777 /etc/apache2/httpd.conf && \
cp /data/conf/apache2/sites.d/site.conf /etc/apache2/sites.d/$APPLICATION_NAME.conf ; fi

#RUN apk add --no-cache apache2 php7 php7-apache2 \
#php7-curl php7-json php7-gd php7-mcrypt php7-memcached \
#php7-intl php7-sqlite3 php7-gmp php7-mbstring php7-redis \
#php7-xml php7-zip php7-cli php7-imagick php7-xsl php7-imap

RUN rm -rf /var/cache/apk/*

EXPOSE 80

ENTRYPOINT ["httpd"]

CMD ["-D", "FOREGROUND"]
