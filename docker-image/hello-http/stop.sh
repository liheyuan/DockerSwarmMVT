#!/bin/bash
eval $(docker-machine env node-1)
last_id=$(docker ps -l -q)
docker stop $last_id 
