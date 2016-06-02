#!/bin/bash -eux
VER="2.3.1"

yum install -y gcc-c++ patch readline readline-devel zlib zlib-devel
yum install -y libyaml-devel libffi-devel openssl-devel make
yum install -y bzip2 autoconf automake libtool bison iconv-devel

curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -L get.rvm.io | bash -s stable

source /etc/profile.d/rvm.sh
rvm reload

rvm requirements run

rvm install $VER

rvm use $VER --default

ruby --version

sudo chown -R  vagrant /usr/local/rvm/gems/ruby-$VER/

gem update --system

gem install rake

gem install rails

# for javascript junk!
yum install -y nodejs
