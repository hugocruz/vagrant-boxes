# -*- mode: ruby -*-
# vi: set ft=ruby :

#define server details
	varnish_servers = [
		{
			:hostname => 'cache1',
			:box => 'precise64',
			:box_url => '/box/precise64.box',
			:versionscript => 'scripts/varnish3.sh',
			:startscript => 'scripts/cache1.sh',
			:varnishport => '16081',
			:agentport => '16085',
			:nginxport => '18070'
		},
		{
			:hostname => 'cache2',
			:box => 'precise64',
			:box_url => '/box/precise64.box',
			:versionscript => 'scripts/varnish3.sh',
			:startscript => 'scripts/cache2.sh',
			:varnishport => '26081',
			:agentport => '26085',
			:nginxport => '28070'
		},
		{
			:hostname => 'cache3',
			:box => 'precise64',
			:box_url => '/box/precise64.box',
			:versionscript => 'scripts/varnish4.sh',
			:startscript => 'scripts/cache3.sh',
			:varnishport => '36081',
			:agentport => '36085',
			:nginxport => '38070'
		},
		{
			:hostname => 'cache4',
			:box => 'precise64',
			:box_url => '/box/precise64.box',
			:versionscript => 'scripts/varnish4.sh',
			:startscript => 'scripts/cache4.sh',
			:varnishport => '46081',
			:agentport => '46085',
			:nginxport => '48070'
		},
	]

Vagrant.configure("2") do |config|
	varnish_servers.each do |cache|
		config.vm.define cache[:hostname] do |cacheconfig|
			cacheconfig.vm.box = cache[:box]
			cacheconfig.vm.box_url = cache[:box_url]
			cacheconfig.vm.hostname = cache[:hostname]
			cacheconfig.vm.provision :shell, path: cache[:versionscript]
			cacheconfig.vm.provision :shell, path: cache[:startscript]
			cacheconfig.vm.network :forwarded_port, guest: cache[:varnishport], host: cache[:varnishport]
			cacheconfig.vm.network :forwarded_port, guest: cache[:agentport], host: cache[:agentport]
			cacheconfig.vm.network :forwarded_port, guest: cache[:nginxport], host: cache[:nginxport]
		end
	end
end
