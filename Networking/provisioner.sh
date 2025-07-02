#!/bin/bash

echo "[Provisioning] Updating packages and installing Apache..."

sudo apt-get update -y
sudo apt-get install -y apache2

sudo systemctl enable apache2
sudo systemctl start apache2

echo "[Provisioning] Done. Apache is running!"

