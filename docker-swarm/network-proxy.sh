#!/bin/bash

eval $(docker-machine env node-1)
docker network create --driver overlay proxy
