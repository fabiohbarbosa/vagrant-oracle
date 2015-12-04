Vagrant with oracle 11.2 XE
===

### To build:
Prerequisites:
  * Vagrant
  * VirtualBox

### Install:
Clone this repository:
```sh
  git clone git@github.com:fabiohbarbosa/vagrant_oracle.git
```

Install vbguest plugin:
```sh
vagrant plugin install vagrant-vbguest
```

Download [oracle-xe-11.2.0-1.0.x86_64.rpm.zip](http://www.oracle.com/technetwork/database/database-technologies/express-edition/downloads/index.html).
<br>
And put oracle-xe-11.2.0-1.0.x86_64.rpm.zip in **./modules/oracle/files**.

Run vagrant:
```sh
vagrant up --provision
```

### Custom scripts:
1. Create SQL in *./oracle*
2. Edit *./oracle/scripts.sh*
3. Add, into the tag <<SCRIPT, *@your_script.sql*

*In this repository has an example to create an user after oracle installation.*

### Proxy:
If your network has proxy, follow these steps:

Install the proxyconf plugin:
```sh
vagrant plugin install vagrant-proxyconf
```

Configure proxy in Vagrantfile:
```vagrant
if Vagrant.has_plugin?("vagrant-proxyconf")
  config.proxy.http     = "http://username:password@host:port/"
  config.proxy.https    = "http://username:password@host:port/"
  config.proxy.no_proxy = "localhost,127.0.0.1"
end
```

### Notes:
This virtual machine running Ubuntu Precise 64.<br>
The password of the user **system** in oracle is **manager**.<br>
After you run *vagrant up*, it's possible to access oracle in localhost:1521.

##### Credits to https://github.com/hilverd/vagrant-ubuntu-oracle-xe
