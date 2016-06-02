#!/bin/bash -eux

VER="2.8.3"

# Install requisite packages
echo "=== Install Development Tools ==="
sudo yum groupinstall -y "Development Tools"
sudo yum install gettext-devel -y openssl-devel perl-CPAN perl-devel zlib-devel

# make a temporary directory to install from
if [[ ! -d ~/git-tmp ]]; then
  echo "=== creating tmp folder ==="
  mkdir -p /home/vagrant/git-tmp
fi

# install git
cd /home/vagrant/git-tmp
echo "Switched to $(pwd)"
wget https://github.com/git/git/archive/v$VER.tar.gz
tar -zxf v$VER.tar.gz
cd git-$VER
echo "Switched to $(pwd)"
echo "=== make configure ==="
make configure
./configure prefix=/usr all
echo "=== make ==="
make
echo "=== make install ==="
make install


# clean up after
echo "=== cleaning up ==="
cd ~
rm -rf /home/vagrant/git-tmp
