#!/bin/bash
apt update
apt install -y apache2

mkdir -p /var/www/apolo.olimpo.test/messages
mkdir -p /var/www/atenea.olimpo.test/messages

cp -r /vagrant/web/apolo/* /var/www/apolo.olimpo.test/
cp -r /vagrant/web/atenea/* /var/www/atenea.olimpo.test/

cp /vagrant/apolo.olimpo.test.conf /etc/apache2/sites-available/
cp /vagrant/atenea.olimpo.test.conf /etc/apache2/sites-available/

a2ensite apolo.olimpo.test.conf
a2ensite atenea.olimpo.test.conf
systemctl reload apache2
