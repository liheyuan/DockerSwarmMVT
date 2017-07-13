#!/bin/bash

# Please not this may only work on physics machines, as virtual machine may not support promisc mode on net nic

ETH="enp0s31f6"

sudo ip link set dev $ETH promisc on

docker network remove macvlan

docker network create -d macvlan --subnet=10.1.64.0/23 --ip-range=10.1.64.128/25 --gateway=10.1.64.1 -o parent=$ETH macvlan
