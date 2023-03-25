#!/bin/bash

echo "Adding a worker to this swarm..."

docker swarm join \
 --token SWMTKN-1-49nj1cmql0jkz5s954yi3oex3nedyz0fb0xx14ie39trti4wxv-8vxv8rssmk743ojnwacrr2e7c \ 
 192.168.1.10:2377

 echo "This node joined a swarm as a worker."