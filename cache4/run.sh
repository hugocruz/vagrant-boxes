#!/bin/bash

echo "Starting all the Vac related things"

sudo service varnish restart
sleep 3
sudo service varnish-agent restart
sudo siege -c11 -t85m -f /vagrant/cache4/urls.txt
