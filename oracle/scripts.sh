#! /bin/bash
sqlplus system/manager@localhost << SCRIPT
@/home/vagrant/vagrant-ubuntu-oracle-xe/oracle/create_user.sql
exit;
SCRIPT
