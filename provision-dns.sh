#!/bin/bash
apt update
apt install -y bind9 bind9utils bind9-doc

cp /vagrant/named.conf.local /etc/bind/named.conf.local
cp /vagrant/db.olimpo.test /etc/bind/db.olimpo.test
cp /vagrant/db.192.168.57 /etc/bind/db.192.168.57

systemctl restart bind9
