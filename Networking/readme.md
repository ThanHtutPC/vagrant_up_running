# Vagrant Networking Lab

A hands-on lab demonstrating various networking options in Vagrant.

##  Networking Features

###  Forwarded Ports
- Guest Port: 80 → Host Port: 8080
- Access from host: `http://localhost:8080`

###  Host-Only Networking
- Static IP: `192.168.56.10`
- Only accessible from the host

###  Bridged Networking
- Uses your real network interface (e.g., `enp0s3`)
- Gets an IP on your local network (check with `ip a` inside the VM)

###  NAT (Default)
- First network interface
- Allows the VM to reach the internet (e.g., for `apt-get`)

###  Result the network interface 
```
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN mode DEFAULT group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP mode DEFAULT group default qlen 1000
    link/ether 02:3b:7b:b7:3b:2d brd ff:ff:ff:ff:ff:ff
3: enp0s8: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP mode DEFAULT group default qlen 1000
    link/ether 08:00:27:c9:27:c2 brd ff:ff:ff:ff:ff:ff
4: enp0s9: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP mode DEFAULT group default qlen 1000
    link/ether 08:00:27:e9:b5:99 brd ff:ff:ff:ff:ff:ff
```

##  How to Use

```bash
vagrant up             # Boot and provision VM
vagrant ssh            # SSH into the VM
vagrant halt           # Stop the VM
vagrant destroy -f     # Destroy the VM
