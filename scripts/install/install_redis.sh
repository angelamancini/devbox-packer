#!/bin/bash -eux

cd /tmp
wget ftp://fr2.rpmfind.net/linux/epel/7/ppc64/r/rubygem-redis-3.2.1-2.el7.noarch.rpm
yum localinstall -y rubygem-redis-3.2.1-2.el7.noarch.rpm

systemctl start redis.service
