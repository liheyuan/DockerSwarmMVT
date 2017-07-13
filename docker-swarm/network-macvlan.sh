#!/bin/bash

for i in 1 2 3;do
    eval $(docker-machine env node-$i)
    docker network remove mv-config
    docker network create --config-only --subnet 192.168.99.0/24 --gateway 192.168.99.1 -o parent=eth1 --driver macvlan mv-config
done

eval $(docker-machine env node-1)
docker network rm mvnet
docker network create -d macvlan --scope swarm --config-from mv-config mvnet 
