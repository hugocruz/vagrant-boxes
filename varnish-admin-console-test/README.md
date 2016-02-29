This Vagrant file allows you to test 4 Varnish instances  with the [Varnish Administration Console](https://www.varnish-software.com/product/varnish-administration-console-0)

Setup:

2 x Varnish Cache 3.x

2 x Varnish Cache 4.x

Each instance has Varnish and the agent configured.


Usage: ./devEnv.sh [up|start|stop|destroy|status]

up - builds all Vagrant boxes (Vagrant up)
start - start all Varnish related services (Varnish + agent) and siege into the local Varnish server
stop - halts the Vagrant boxes ( Vagrant halt)
destroy - Destroys all the boxes ( Vagrant destroy)
status - (Vagrant status)
