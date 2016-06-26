#!/bin/bash -eux
echo 'Install EPEL repo'
VER="7-7"

wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-$VER.noarch.rpm
rpm -ivh epel-release-$VER.noarch.rpm

echo 'Install Ansible'
yum -y update
yum -y install ansible
ansible --version
