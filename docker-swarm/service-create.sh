#!/bin/bash

eval $(docker-machine env node-1)

docker service create --name hello-http --network proxy hello-http
