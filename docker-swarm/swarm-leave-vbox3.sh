#!/bin/bash

# Join other 2 node
for i in 1 2 3;do
    eval $(docker-machine env node-$i)
    docker swarm leave --force
done

echo ">> The swarm cluster is down"
