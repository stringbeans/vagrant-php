vagrant-php
===========

Vagrant setup for a PHP box. At the time of writing, this environment is running ubuntu/trusty64 (Ubuntu LTS 14.04 64bit) with PHP 5.5.9

Make sure you run this beforehand: vagrant plugin install vagrant-triggers

Installation Instructions:

1. vagrant up

Place any web-accessible code into /html

In the Vagrant environment, /var/www is a symbolic link to /vagrant

Your web app will be accessible at 127.0.0.1 in your browser. SSL support is also enabled.

**NOTE: read http://www.dmuth.org/node/1404/web-development-port-80-and-443-vagrant if you dont want to use sudo to run vagrant

On MacOSX != Yosemite:
````bash
sudo ipfw add 100 fwd 127.0.0.1,8080 tcp from any to me 80
sudo ipfw add 101 fwd 127.0.0.1,8443 tcp from any to me 443
````
