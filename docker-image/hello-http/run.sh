#!/bin/bash
eval $(docker-machine env node-1)
docker run -d hello-http
