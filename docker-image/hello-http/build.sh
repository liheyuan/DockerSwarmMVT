#!/bin/bash
eval $(docker-machine env node-1)
docker build -t hello-http .
