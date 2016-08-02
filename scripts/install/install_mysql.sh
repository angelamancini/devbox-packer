#!/bin/bash -eux
echo "try to fix the hang bug"
yum -y update gnutls


wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
sudo rpm -ivh mysql-community-release-el7-5.noarch.rpm
yum -y update
sudo yum -y install mysql-server
sudo systemctl start mysqld
