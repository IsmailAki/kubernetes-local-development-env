Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.define "ubuntu_k3s" do |ubuntu_k3s|
  
    config.vm.network "forwarded_port",
      guest: 6443,
      host:  6443,
      auto_correct: true

    config.vm.network "forwarded_port",
      guest: 3000,
      host:  3000,
      auto_correct: true
    
    config.vm.provider "virtualbox" do |vb|
      vb.name = "Ubuntu k3s"
      vb.memory = "4096"
    end
    config.vm.provision "k3s install script", type: "shell",
      path: "scripts/k3s.sh"
    end 
  end