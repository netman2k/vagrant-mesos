# -*- mode: ruby -*-
# vi: set ft=ruby :
manage_host = true
manage_guest = true
private_net_prefix='192.168.50'
domain="localdomain"
hosts={
  m1:{
    hostname: "m1.#{domain}",
    memory: 2048,
    private_ip: "#{private_net_prefix}.2",
    provision:
      <<-SCRIPT
        sudo yum install vim -y
        sudo /vagrant/install_puppetagent.sh
      SCRIPT
  },
  m2:{
    hostname: "m2.#{domain}",
    memory: 2048,
    private_ip: "#{private_net_prefix}.2",
    provision:
      <<-SCRIPT
        sudo yum install vim -y
      SCRIPT
  },
}

if Gem::Version.new(::Vagrant::VERSION) < Gem::Version.new('1.5')
  Vagrant.require_plugin('vagrant-hostmanager')
end

Vagrant.configure('2') do |config|

  if ENV.key? 'VAGRANT_BOX'
    config.vm.box = ENV['VAGRANT_BOX']
  else
    config.vm.box = 'centos/7'
  end

  config.hostmanager.enabled = true
  config.hostmanager.manage_host = manage_host
  config.hostmanager.manage_guest = manage_guest

  hosts.each do |name,prop|
    config.vm.define name do |server|
      server.vm.hostname = prop[:hostname] if prop[:hostname]
      if prop[:private_ip]
        server.vm.network :private_network, :ip => prop[:private_ip]
      end
      server.hostmanager.aliases = prop[:aliases] if prop[:aliases]
      if prop[:memory]
        server.vm.provider "virtualbox" do |vb|
          vb.memory = prop[:memory]
        end
      end
      server.vm.provision "shell", inline: prop[:provision] if prop[:provision]
    end
  end
end


