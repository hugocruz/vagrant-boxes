#!/bin/bash
echo === configuring cache1, running Varnish 3 ===
sudo cp /vagrant/cache1/ngx-default /etc/nginx/sites-enabled/default
sudo cp /vagrant/cache1/default.vcl /etc/varnish/default.vcl
sudo cp /vagrant/cache1/varnish /etc/default/varnish
sudo cp /vagrant/cache1/varnish-agent /etc/default/varnish-agent
sudo cp /vagrant/cache1/run.sh /home/vagrant/run.sh
sudo chmod 755 /home/vagrant/run.sh
sudo service varnish restart
sudo service varnish-agent restart
sudo service nginx restart