#!/bin/sh

#-----------------------------
#
#  General Update of Packages
#
#------------------------------
yum update


#-----------------------------
#
#  Install specific packages
#
#------------------------------
yum install -y \
libicu \
libicu-devel \
git \
gcc \
gcc-c++ \
make \
expect \
xinetd \
nmap \
ncurses \
ncurses-devel \
tmux \
rdate \
mlocate
