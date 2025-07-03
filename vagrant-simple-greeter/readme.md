## Use plugin directly from GitHub
```sh
vagrant plugin install https://github.com/yourusername/vagrant-greeter.git
```

## Install the local path 
```sh
gem build vagrant-greeter.gemspec
vagrant plugin install ./vagrant-greeter-0.1.0.gem
```

## In your production vagrantfile
```sh
vagrant greet --name POS-client
```

### Vagrantfile
```rb
config.vm.provision : pos:provisioner
```

## Prodution workflow
```sh 
vagrant up 
vagrant greet --name cashier1
vagrant package --output pos-base.box
```