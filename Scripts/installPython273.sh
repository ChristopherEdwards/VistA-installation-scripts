#!/bin/bash

# Install Python 2.7.3
sudo yum -y groupinstall "Development tools"
sudo yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel
wget http://python.org/ftp/python/2.7.3/Python-2.7.3.tar.bz2
tar xf Python-2.7.3.tar.bz2
cd Python-2.7.3
./configure --prefix=/usr/local
make
sudo make altinstall

# Install distribute for Python 2.7.3
wget http://pypi.python.org/packages/source/d/distribute/distribute-0.6.35.tar.gz
tar xf distribute-0.6.35.tar.gz
cd distribute-0.6.35
sudo /usr/local/bin/python2.7 setup.py install
