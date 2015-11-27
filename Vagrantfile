Vagrant.configure("2") do |config|
  config.vm.box = "landregistry/centos"
  config.vm.box_version = "0.3"
  config.vm.box_check_update = true
  config.vm.boot_timeout = 350
  config.ssh.forward_agent = true


  #config.vm.network :forwarded_port, host: 4567, guest: 4567

  config.vm.provision :shell, :path => 'provision.sh'

end
