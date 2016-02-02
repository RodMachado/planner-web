# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Use Ubuntu 14.04 Trusty Tahr 64-bit as our operating system
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "planner-web"

  # Configurate the virtual machine to use 2GB of RAM
  config.vm.provider "virtualbox" do |v|
    v.memory = 2096
    v.cpus = 2
  end

  config.ssh.forward_agent = true

  # Forward the Rails server default port to the host
  config.vm.network :forwarded_port, guest: 3000, host: 3001, auto_correct: true
  config.vm.network :forwarded_port, guest: 3306, host: 3306, auto_correct: true

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.99.90"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  config.vm.synced_folder ".", "/planner-web", type: "nfs"
  config.vm.synced_folder "../planner-core", "/planner-core", type: "nfs"
  config.vm.synced_folder "../planner_konopas", "/planner_konopas", type: "nfs"
end