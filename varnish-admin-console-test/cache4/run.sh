#!/bin/bash

echo "Starting all the Vac related things"

sudo service varnish restart
sleep 3
sudo service varnish-agent restart
sudo siege -c7 -t185m -f /vagrant/scripts/urls.txt --header="X-Server: Cache4" -v
