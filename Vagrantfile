# Basic Vagrant configuration for a web server setup
Vagrant.configure("2") do |config|
  # box 
  config.vm.box = "ubuntu/bionic64"

  # VM hostname
  config.vm.hostname = "vagrant-lab" 

  # private network configuration
  config.vm.network "private_network", type: "dhcp"

  # shared folder configuration
  config.vm.synced_folder "./share_folders", "/home/vagrant/shared"

  # forwarded port configuration 80 to 8080
  config.vm.network "forwarded_port", guest: 80, host: 8080

  # provisioning script for apache2 
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt update
    sudo apt install -y tree
    sudo apt install -y apache2
    sudo systemctl enable apache2
    sudo systemctl start apache2
  SHELL
end