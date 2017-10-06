#!/bin/sh

apk add --no-cache php$PHP_VERSION

for module in $PHP_MODULES
do
    apk add --no-cache php$PHP_VERSION-$module
done