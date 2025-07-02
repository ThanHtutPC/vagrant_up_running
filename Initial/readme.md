# Vagrant Lab: Your First Vagrant Machine

This lab helps you practice key Vagrant features from the lesson.

## 🔹 Features
- Uses `hashicorp/bionic64` box
- Sets hostname
- Configures private DHCP network
- Mounts shared folder from host to guest
- Provision installs basic packages
- Teardown with `vagrant destroy`

## 🛠 Commands
```bash
vagrant up              # Start VM
vagrant ssh             # Access VM via SSH
vagrant status          # Show VM status
vagrant halt            # Stop VM
vagrant destroy         # Delete VM
