# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.provision :shell, path: "bootstrap.sh"

  config.vm.provider "virtualbox" do |vm|
    vm.memory = 2048
    vm.cpus = 2
    vm.gui = true
    vm.customize ["modifyvm", :id, "--cpuexecutioncap", "90"]
  end

config.vm.synced_folder "home/", "/home/vagrant/",
  owner: "vagrant", group: "vagrant"
end
