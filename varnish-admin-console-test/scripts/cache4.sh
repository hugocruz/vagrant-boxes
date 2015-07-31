#!/bin/bash
echo === configuring cache4 running Varnish 4===
cp /vagrant/cache4/ngx-default /etc/nginx/conf.d/default.conf
cp /vagrant/cache4/default.vcl /etc/varnish/default.vcl
cp /vagrant/cache4/varnish /etc/default/varnish
cp /vagrant/cache4/varnish-agent /etc/default/varnish-agent
sudo cp /vagrant/cache4/run.sh /home/vagrant/run.sh
sudo chmod 755 /home/vagrant/run.sh
sudo service varnish restart
sudo service varnish-agent restart
sudo service nginx restart
