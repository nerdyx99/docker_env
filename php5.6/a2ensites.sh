#!/bin/sh
for file in /etc/apache2/sites-available/*.dev.conf 
do 
    echo "Enabling site ${file##*/}"
    a2ensite ${file##*/} 
done
