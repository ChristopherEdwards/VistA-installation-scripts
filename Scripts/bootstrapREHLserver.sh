#!/bin/sh

#-------------------------------------------------------------
#
#  This script must be run by root or with sudo permissions.
#
#  It starts the minimal setup to configure the RHEL server.
#
#  It expects as argument the name of the user account
#  to be created.
#
#-------------------------------------------------------------

#-------------------------------------------------------------
#
# Install Git, so that we can bring up the rest of scripts
#
#-------------------------------------------------------------
yum install -y git


#-------------------------------------------------------------
#
# Create the user.
#
#-------------------------------------------------------------
useradd osehra


#-------------------------------------------------------------
#
# Change the user's password.
#
#-------------------------------------------------------------
echo -e "g00d0s3hrapa55w0rd" | passwd --stdin osehra


#-------------------------------------------------------------
#
# Add the user to the list of sudoers
#
#-------------------------------------------------------------
mkdir -p /etc/sudoers.d
echo "osehra  ALL=(ALL)   ALL" > /etc/sudoers.d/customsudoers
chmod 0440 /etc/sudoers.d/customsudoers



#---------------------------------------------------------------
#
# Add the cache manager user, and add our own user to its group.
#
#---------------------------------------------------------------
useradd cacheusr
sudo usermod -a -G cacheusr osehra
groups osehra
