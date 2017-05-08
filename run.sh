#!/bin/sh

echo "-> Removing old apache pid file"
rm -f /run/apache2/httpd.pid
echo "-> Starting apache"
apachectl -d /etc/apache2 -f httpd.conf -e info -DFOREGROUND

