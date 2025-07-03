#! /usr/bin/env bash

sudo apt-get install -y apache2

sudo systemctl enable apache2
sudo systemctl start apache2