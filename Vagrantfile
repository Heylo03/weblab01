Vagrant.configure("2") do |config|

  config.vm.box = "debian/bookworm64"

  config.vm.define "ns1" do |ns1|
    ns1.vm.hostname = "ns1.olimpo.test"
    ns1.vm.network "private_network", ip: "192.168.57.10"
    ns1.vm.provision "shell", path: "provision-dns.sh"
  end

  config.vm.define "mercurio" do |web|
    web.vm.hostname = "mercurio.olimpo.test"
    web.vm.network "private_network", ip: "192.168.57.11"
    web.vm.provision "shell", path: "provision-web.sh"
  end

end
