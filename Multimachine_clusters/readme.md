# Multimachine Clusters with Vagrant

This project demonstrates how to set up and manage multiple Vagrant VMs to simulate a simple cluster environment.

## Topics Covered

- Running multiple VMs with Vagrant
- Controlling and provisioning each VM
- Communication between VMs
- Host-only and bridged networking
- Real example: MySQL remote access setup

## VMs Setup

- **db**: MySQL server (IP: `192.168.56.11`)
- **web**: Example client machine

## Networking

- **Host-only**: For private VM-to-VM communication
- **Bridged**: For access from external devices

## MySQL Provisioning (`db_provisioner.sh`)

- Installs MySQL
- Configures it to listen on all interfaces
- Grants root access from any host
- Restarts MySQL

## Test MySQL connection (web)
```sh
mysql -uroot -proot -h192.168.56.10
```

## Commands
```bash
vagrant up              # Start VM
vagrant ssh node1       # Access VM via SSH
vagrant status node1    # Show VM status
vagrant halt node1      # Stop VM
vagrant destroy         # Delete VM
