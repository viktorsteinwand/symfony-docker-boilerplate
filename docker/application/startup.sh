#!/bin/sh
#
# Ensures correct permissions on the application folder

chgrp -R 33 /var/www

rm -f /var/www/html/var/bootstrap.php.cache
touch /var/www/html/var/bootstrap.php.cache

chmod -R g+ws /var/www/html/var
