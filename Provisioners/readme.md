## 📦 Features

- Uses `ubuntu/bionic64` Vagrant box
- Automatically installs and starts Apache
- Port forwarding: guest port `80` → host port `8080`
- Serves a shared HTML file from `html/index.html`
- Symbolic link `/var/www/html -> /vagrant/html`
- Provisioned using inline shell and external `provision.sh`