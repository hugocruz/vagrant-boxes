#!/bin/bash
echo === configuring cache3 running Varnish 4 ===
sudo cp /vagrant/cache3/ngx-default /etc/nginx/sites-enabled/default
sudo cp /vagrant/cache3/default.vcl /etc/varnish/default.vcl
sudo cp /vagrant/cache3/varnish /etc/default/varnish
sudo cp /vagrant/cache3/varnish-agent /etc/default/varnish-agent
sudo cp /vagrant/cache3/run.sh /home/vagrant/run.sh
sudo chmod 755 /home/vagrant/run.sh
sudo service varnish restart
sudo service varnish-agent restart
sudo service nginx restart
