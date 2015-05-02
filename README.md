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

Install vbguest plugin
```sh
vagrant plugin install vagrant-vbguest
```

Download [oracle-xe-11.2.0-1.0.x86_64.rpm.zip](http://www.oracle.com/technetwork/database/database-technologies/express-edition/downloads/index.html).
<br>
And put oracle-xe-11.2.0-1.0.x86_64.rpm.zip in **./modules/oracle/files**.

Run vagrant
```sh
vagrant up --provision
```

### Custom scripts:
1. Create SQL in *./oracle*
2. Edit *./oracle/scripts.sh*
3. Add, into the tag <<SCRIPT, *@your_script.sql*

*In this repository has an example to create an user after oracle installation.*

### Notes:
This virtual machine running ubuntu version ##.##
The password of the user **system** in oracle is **manager**
After you run *vagrant up*, it's possible to access oracle in localhost:1521

##### Credits to https://github.com/hilverd/vagrant-ubuntu-oracle-xe
