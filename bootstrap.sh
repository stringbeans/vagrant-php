#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
rm -rf /var/www
ln -fs /vagrant /var/www

apt-get install -y php5 libapache2-mod-php5 php5-mcrypt php5-cli php5-curl php5-dbg php5-common php5-mysql php5-json

wget https://github.com/yiisoft/yii/releases/download/1.1.15/yii-1.1.15.022a51.tar.gz
tar -xzf yii-1.1.15.022a51.tar.gz
rm -Rf /vagrant/yii
mv yii-1.1.15.022a51 /vagrant/yii

sudo ln -s /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/rewrite.load

cp -f /vagrant/000-default.conf /etc/apache2/sites-available/.
cp -f /vagrant/envvars /etc/apache2/.
service apache2 restart
