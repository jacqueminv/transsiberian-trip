# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'erb'

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "precise32"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine.
  #config.vm.network :forwarded_port, guest: 2368, host: 2368
  #config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :private_network, ip: "192.168.33.10"

  # Enable provisioning through a shell script.
  config.vm.provision :shell do |shell|
    relative     = './'
    script       = 'bootstrap.sh'
    shell.inline = ERB.new("<% def import(file); File.read('#{relative}' + file); end %>" + File.read("#{relative}#{script}")).result
  end
end
