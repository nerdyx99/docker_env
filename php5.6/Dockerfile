FROM chrisguindon/webdev:php5.6
MAINTAINER Christopher Guindon <chris.guindon@eclipse.org>

WORKDIR /localsite

# Copy webdev php.ini file for development
COPY php.ini /usr/local/etc/php/

COPY a2ensites.sh /a2ensites.sh
ADD ./sites-available /etc/apache2/sites-available/
RUN a2dissite 000-default && a2dissite default-ssl && chown -R www-data:www-data /localsite \
    && /a2ensites.sh && rm /a2ensites.sh \
    && /etc/init.d/apache2 start

VOLUME /var/www/html
VOLUME /localsite

EXPOSE 80