#!/bin/bash

echo "Set a master to this swarm..."

sudo docker swarm init --advertise-addr=192.168.1.10
sudo docker swarm join-token workers | grep docker > /vagrant/workers.sh

echo "This node joined a swarm as a manager."

sudo docker pull httpd

docker service create --name my-beautiful-html --replicas 20 -p 80:80 \
  --mount type=bind,source=/path/to/index.html,target=/usr/local/apache2/htdocs/index.html \
  httpd

echo "Webpage created."