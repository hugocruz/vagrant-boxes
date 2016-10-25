#!/bin/bash
echo === configuring cache4 running Varnish 4.1===
sudo cp /vagrant/cache4/ports.conf /etc/apache2/ports.conf
echo "ServerName localhost" | sudo tee /etc/apache2/conf-available/servername.conf
sudo cp /vagrant/cache4/default.vcl /etc/varnish/default.vcl
sudo cp /vagrant/cache4/varnish /etc/default/varnish
sudo cp /vagrant/cache4/varnish-agent /etc/default/varnish-agent
sudo cp /vagrant/cache4/run.sh /home/vagrant/run.sh
sudo chmod 755 /home/vagrant/run.sh
sudo service varnish restart
sudo service varnish-agent restart
sudo service apache2 restart
