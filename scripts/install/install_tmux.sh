#!/bin/bash -eux

wget ftp://195.220.108.108/linux/fedora/linux/updates/23/x86_64/t/tmux-2.1-3.fc23.x86_64.rpm
yum localinstall -y tmux-2.1-3.fc23.x86_64.rpm

rm tmux-2.1-3.fc23.x86_64.rpm
