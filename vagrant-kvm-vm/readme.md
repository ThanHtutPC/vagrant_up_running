# Create KVM VM with Vagrant and Virt-Manager

## Install vagrant-libvirt plugin 
```sh 
vagrant plugin install vagrant-libvirt
```

## Add your user to libvirt group
```sh 
sudo useradd -aG libvirt $(whoami)
newgrp libvirt
```

## Create the vagrant project with libvirt provider 

### Download from github
```sh 
git clone <git-url>
```

## Start the vm with kvm
```sh 
vagrant up --provider=libvirt
```

## Run for virt manager 
```sh 
cat <<EOF > vagrant-kvm-network.xml
<network>
  <name>vagrant-kvm-network</name>
  <bridge name="virbr100" stp="on" delay="0"/>
  <ip address="192.168.100.1" netmask="255.255.255.0">
    <dhcp>
      <range start="192.168.100.2" end="192.168.100.254"/>
    </dhcp>
  </ip>
</network>
EOF

sudo virsh net-define vagrant-kvm-network.xml
sudo virsh net-autostart vagrant-kvm-network
sudo virsh net-start vagrant-kvm-network
```