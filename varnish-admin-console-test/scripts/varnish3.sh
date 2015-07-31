#!/bin/bash
echo ===== Installing dependencies, curl ====
sudo apt-get update
sudo apt-get install apt-transport-https
sudo apt-get install curl siege screen nginx vim -y
curl -L https://repo.varnish-cache.org/debian/GPG-key.txt | sudo apt-key add -
sudo cp /vagrant/repos/varnish-cache-v3.list /etc/apt/sources.list.d/
sudo apt-get update
echo ==== Installing Varnish ====
sudo apt-get install varnish -y
echo ==== installing varnish-agent ===
sudo apt-get install libmicrohttpd5 -y
sudo apt-get install varnish-agent -y
echo ====  Done prepping the machine. restarting varnish and varnish agent ====
sudo rm -rf /etc/varnish/agent_secret
echo "varnish:varnish" | sudo dd of=/etc/varnish/agent_secret
sudo service varnish restart
sudo service nginx restart
sudo service varnish-agent restart
