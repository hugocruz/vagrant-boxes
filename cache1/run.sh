#!/bin/bash

echo "Starting all the Vac related things"

sudo service varnish restart
sudo service varnish-agent restart
sudo siege -c10 -t225m -f /vagrant/cache1/urls.txt
