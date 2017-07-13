#!/bin/bash

eval $(docker-machine env node-1)
docker run --network macvlan -itd coder4/hello-http:1.0
