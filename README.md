# Lab Cluster with Docker Swarm and Vagrant

This is a simple lab cluster with Docker Swarm and Vagrant. It creates 7 VMs with VirtualBox each one has a Debian image, 2GB of RAM and 2 CPUs. 

The VMs are configured with individual IPs and the following roles:
- 1 manager node
- 6 worker nodes

## Requirements
- Docker
- Vagrant
- VirtualBox (or any other provider supported by Vagrant)

## How to use? 
1. Clone this repository
2. Run `vagrant up` to create the VMs
3. Run `vagrant ssh manager` to access the manager node
4. Run `docker node ls` to see the nodes in the cluster
5. Open the browser and access the manager node IP address of your choice (or all of them) to see the apache web server running in the cluster. 
6. Run `vagrant destroy -f` to destroy the VMs
