#!/bin/bash -eux

cd /tmp
wget ftp://195.220.108.108/linux/remi/enterprise/7/remi/x86_64/redis-3.2.1-2.el7.remi.x86_64.rpm
yum localinstall -y redis-3.2.1-2.el7.remi.x86_64.rpm

systemctl start redis.service
