#! /usr/bin/env bash

echo "Provisioning the system..." > /vagrant-lab/provision.log
cat /etc/host 2>&1 | tee -a /vagrant-lab/provision.log