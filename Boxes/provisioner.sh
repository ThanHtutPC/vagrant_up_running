#!/usr/bin/env bash

# Create the new user
useradd -m -s /bin/bash devops

# Add devops to sudoers with no password prompt
echo "devops ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/devops
chmod 440 /etc/sudoers.d/devops

# Create .ssh directory
mkdir -p /home/devops/.ssh
chmod 700 /home/devops/.ssh

# Add the Vagrant insecure public key
sudo wget --no-check-certificate https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub -O /home/devops/.ssh/authorized_keys
chmod 600 /home/devops/.ssh/authorized_keys
chown -R devops:devops /home/devops/.ssh

echo "Devops user created with Vagrant public key"

