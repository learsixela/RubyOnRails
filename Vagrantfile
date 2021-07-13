Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/impish64"
  config.vm.network "forwarded_port", guest: 3000, host: 3000, host_ip: "127.0.0.1"
  config.vm.provision :shell, path: "bootstrap.sh", privileged: false
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]  
    vb.customize ["modifyvm", :id, "--cpus", "2"]  
  end
end