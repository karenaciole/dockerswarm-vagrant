# -*- mode: ruby -*-
# vi: set ft=ruby : 

machines = {
    "master" => {"memory" => "2048", "cpu" => "2", "ip" => "10", "image" => "debian/bullseye64"},
    "worker01" => {"memory" => "2048", "cpu" => "2", "ip" => "11", "image" => "debian/bullseye64"},
    "worker02" => {"memory" => "2048", "cpu" => "2", "ip" => "12", "image" => "debian/bullseye64"},
    "worker03" => {"memory" => "2048", "cpu" => "2", "ip" => "13", "image" => "debian/bullseye64"},
    "worker04" => {"memory" => "2048", "cpu" => "2", "ip" => "14", "image" => "debian/bullseye64"},
    "worker05" => {"memory" => "2048", "cpu" => "2", "ip" => "15", "image" => "debian/bullseye64"},
    "worker06" => {"memory" => "2048", "cpu" => "2", "ip" => "16", "image" => "debian/bullseye64"}
}

Vagrant.configure("2") do |config|

    machines.each do |name, conf|
        config.vm.define "#{name}" do |machine|
            machine.vm.box = "#{conf["image"]}"
            machine.vm.hostname = "#{name}"
            machine.vm.network "private_network", ip: "192.168.1.#{conf["ip"]}" # set individual ip to each machine
            machine.vm.provider "virtualbox" do |vb|
                vb.name = "#{name}"
                vb.memory = conf["memory"]
                vb.cpus = conf["cpu"]

            end
            machine.vm.provision "shell", path: "docker-install.sh"

            if "#{name}" == "master"
                machine.vm.provision "shell", path: "master.sh"
            else 
                machine.vm.provision "shell": path: "workers.sh"
            end

        end
    end
end
        
