vagrant-php
===========

Vagrant setup for a PHP box. At the time of writing, this environment is running ubuntu/trusty64 (Ubuntu LTS 14.04 64bit) with PHP 5.5.9

Installation Instructions:

1. sudo vagrant up
2. vagrant ssh
(3. sudo vagrant destroy) to destroy the environment when you're done

Place any web-accessible code into /html

In the Vagrant environment, /var/www is a symbolic link to /vagrant

Your web app will be accessible at 127.0.0.1 in your browser. SSL support is also enabled.
