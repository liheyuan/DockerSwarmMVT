#!/bin/bash

eval $(docker-machine env node-1)

docker service scale hello-http=2
