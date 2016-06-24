#!/bin/bash -eux

yum -y update
yum -y install ansible
ansible --version
