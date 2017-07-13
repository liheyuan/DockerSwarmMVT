#!/bin/bash

eval $(docker-machine env node-1)

docker service ps --filter desired-state=running --format "{{.Name}}" hello-http
