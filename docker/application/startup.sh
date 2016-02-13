#!/bin/sh
#
# Ensures correct permissions on the application folder

chgrp -R 33 /var/www
chmod -R g+ws /var/www/html/var
