#!/bin/bash

ETH="eth1"
SUBNET_RANGE="192.168.99.0/24"
IP_RANGES=(EMPTY 192.168.99.128/28 192.168.99.144/28 192.168.99.160/28)
GATEWAY="192.168.99.1"

for i in 1 2 3;do
    IP_RANGE=${IP_RANGES[$i]}
    docker-machine ssh node-$i "sudo ip link set dev $ETH promisc on"
    eval $(docker-machine env node-$i)
    docker network rm mv-config
    docker network create --config-only --subnet $SUBNET_RANGE --gateway $GATEWAY -o parent=eth1 --ip-range $IP_RANGE mv-config
done

eval $(docker-machine env node-1)
docker network remove macvlan
docker network create -d macvlan --scope swarm --config-from mv-config macvlan 
