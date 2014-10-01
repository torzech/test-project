VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/ubuntu-14.04"
  config.vm.network "private_network", ip: "10.1.1.101"
  config.ssh.forward_agent = true
  # config.vm.synced_folder "../data", "/vagrant_data"
  config.vm.provision :shell, path: ".bootstrap.sh"

  config.vm.provider "virtualbox" do |v|
    # v.gui = true
    v.memory = 1024
    v.cpus = 2
  end
end

