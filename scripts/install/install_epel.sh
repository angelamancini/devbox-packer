#!/bin/bash -eux

VER="7-7"

wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-$VER.noarch.rpm
rpm -ivh epel-release-$VER.noarch.rpm
