FROM linnovate/web:16.04
WORKDIR /var/www/html

RUN curl https://drupalconsole.com/installer -L -o drupal.phar
RUN mv drupal.phar /usr/local/bin/drupal
RUN chmod +x /usr/local/bin/drupal
RUN drupal init # fill form