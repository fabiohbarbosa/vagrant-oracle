# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  config.vm.box       = "oracle"
  config.vm.box_url   = "http://files.vagrantup.com/precise64.box"
  config.vm.hostname  = "oracle"

  # share this project under /home/vagrant/vagrant-ubuntu-oracle-xe
  config.vm.synced_folder ".", "/home/vagrant/vagrant-ubuntu-oracle-xe", :mount_options => ["dmode=777","fmode=666"]

  # Forward Oracle port
  config.vm.network :forwarded_port, guest: 1521, host: 1521

  # Provider-specific configuration so you can fine-tune various backing
  # providers for Vagrant. These expose provider-specific options.
  config.vm.provider :virtualbox do |vb|
    # Use VBoxManage to customize the VM
    vb.customize ["modifyvm", :id,
                  "--name", "oracle",
                  # Oracle claims to need 512MB of memory available minimum
                  "--memory", "512",
                  # Enable DNS behind NAT
                  "--natdnshostresolver1", "on"]
  end

  # Localtime Sao Paulo/Brazil, see anothers in /usr/share/zoneinfo
  config.vm.provision :shell, :inline => "echo \"America/Sao_Paulo\" | sudo ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime"

  config.vbguest.auto_update = false

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.module_path = "modules"
    puppet.manifest_file = "base.pp"
    puppet.options = "--verbose --trace"
  end

  # Run oracle scripts
  config.vm.provision "shell", path: "oracle/scripts.sh"
end
