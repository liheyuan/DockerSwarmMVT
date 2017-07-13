#!/bin/bash

# Please not this may only work on physics machines, as virtual machine may not support promisc mode on net nic

ETH="eth1"
SUBNET_RANGE="192.168.99.0/24"
IP_RANGE="192.168.99.128/25"
GATEWAY="192.168.99.1"

docker-machine ssh node-1 "sudo ip link set dev $ETH promisc on"

eval $(docker-machine env node-1)

docker network remove macvlan

docker network create -d macvlan --subnet=$SUBNET_RANGE --ip-range=$IP_RANGE --gateway=$GATEWAY -o parent=$ETH macvlan
