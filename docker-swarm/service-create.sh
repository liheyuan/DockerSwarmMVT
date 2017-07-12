#!/bin/bash

eval $(docker-machine env node-1)

docker service create --name hello-http --network coder4 -p 8080:8080 coder4/hello-http:1.0
