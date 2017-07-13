#!/bin/bash

eval $(docker-machine env node-1)

docker service remove test

docker service create --name test --network macvlan --replicas 6 alpine sleep 600
