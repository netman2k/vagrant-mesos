# -*- mode: ruby -*-
# vi: set ft=ruby :
MEMORY="1024"

if Gem::Version.new(::Vagrant::VERSION) < Gem::Version.new('1.5')
  Vagrant.require_plugin('vagrant-hostmanager')
end

Vagrant.configure('2') do |config|

  if ENV.key? 'VAGRANT_BOX'
    config.vm.box = ENV['VAGRANT_BOX']
  else
    config.vm.box = 'centos/7'
    #config.vm.box_url = 'http://cloud-images.ubuntu.com/precise/current/precise-server-cloudimg-vagrant-amd64-disk1.box'
  end

  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.manage_guest = true

#  config.vm.define :zk01 do |server|
#    server.vm.hostname = 'zk01'
#    server.vm.network :private_network, :ip => '10.0.0.11'
#    server.hostmanager.aliases = %w(zookeeper)
#    #server.vm.provider "virtualbox" do |vb|
#    #  vb.memory = MEMORY
#    #end
#  end
#
#  config.vm.define :zk02 do |server|
#    server.vm.hostname = 'zk02'
#    server.vm.network :private_network, :ip => '10.0.0.2'
#    server.hostmanager.aliases = %w(zookeeper)
#    #server.vm.provider "virtualbox" do |vb|
#    #  vb.memory = MEMORY
#    #end
#  end
#  config.vm.define :zk03 do |server|
#    server.vm.hostname = 'zk03'
#    server.vm.network :private_network, :ip => '10.0.0.3'
#    server.hostmanager.aliases = %w(zookeeper)
#    #server.vm.provider "virtualbox" do |vb|
#    #  vb.memory = MEMORY
#    #end
#  end
#
  config.vm.define :master1 do |server|
    server.vm.hostname = 'master1'
    server.vm.network :private_network, :ip => '10.0.0.21'
    server.hostmanager.aliases = %w(master)
    server.vm.provider "virtualbox" do |vb|
      vb.memory = MEMORY
    end
  end
  config.vm.define :master2 do |server|
    server.vm.hostname = 'master2'
    server.vm.network :private_network, :ip => '10.0.0.22'
    server.hostmanager.aliases = %w(master)
    server.vm.provider "virtualbox" do |vb|
      vb.memory = MEMORY
    end
  end
  config.vm.define :master3 do |server|
    server.vm.hostname = 'master3'
    server.vm.network :private_network, :ip => '10.0.0.23'
    server.hostmanager.aliases = %w(master)
    server.vm.provider "virtualbox" do |vb|
      vb.memory = MEMORY
    end
  end
  config.vm.define :slave1 do |server|
    server.vm.hostname = 'slave1'
    server.vm.network :private_network, :ip => '10.0.0.31'
    #server.hostmanager.aliases = %w(slave)
    server.vm.provider "virtualbox" do |vb|
      vb.memory = 2048
    end
  end
  config.vm.define :slave2 do |server|
    server.vm.hostname = 'slave2'
    server.vm.network :private_network, :ip => '10.0.0.32'
    #server.hostmanager.aliases = %w(slave)
    server.vm.provider "virtualbox" do |vb|
      vb.memory = 2048
    end
  end
end
