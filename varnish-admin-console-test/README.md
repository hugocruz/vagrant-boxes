This Vagrant file allows you to test 4 Varnish instances  with the [Varnish Administration Console](https://www.varnish-software.com/product/varnish-administration-console-0)

Currently this setup has:

- 2 x Varnish Cache 4.0.3 (cache1, cache2)
- 2 x Varnish Cache 4.1.x (cache3, cache4)
- 1 x Varnish Cache 3.0.7 (cache5)

Each instance has Varnish and the agent configured.


**Usage**: ./devEnv.sh [up|start|stop|destroy|status]

- up - builds all Vagrant boxes (Vagrant up)
- start - start all Varnish related services (Varnish + agent) and siege into the local Varnish server
- stop - halts the Vagrant boxes ( Vagrant halt)
- destroy - Destroys all the boxes ( Vagrant destroy)
- status - (Vagrant status)


Images from [here](http://images.varnish-software.com)
