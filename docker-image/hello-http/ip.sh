#!/bin/bash
eval $(docker-machine env node-1)
last_id=$(docker ps -l -q)
docker inspect --format='{{.NetworkSettings.IPAddress}}' $last_id
