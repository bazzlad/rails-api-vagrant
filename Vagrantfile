# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"
  #config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.synced_folder "./project/", "/home/vagrant/package-builder-api/", :mount_options => ["dmode=777", "fmode=666"]

  config.vm.network "forwarded_port", guest: 3000, host: 3000

  config.vm.provider "virtualbox" do |vb|
     vb.memory = "2048"
   end
  
end
