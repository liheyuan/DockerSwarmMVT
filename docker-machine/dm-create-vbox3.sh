#!/usr/bin/env bash

for i in 1 2 3; do
    docker-machine create -d virtualbox --virtualbox-hostonly-nicpromisc allow-all node-$i
done


