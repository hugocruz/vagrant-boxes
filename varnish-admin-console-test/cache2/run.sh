#!/bin/bash

echo "Starting all the Vac related things"

sudo service varnish restart
sudo service varnish-agent restart
sudo siege -c10 -t115m -f /vagrant/cache2/urls.txt
