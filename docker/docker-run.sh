#!/bin/bash

eval $(docker-machine env node-1)

docker run -d --rm --name test-exit alpine tail -f /dev/null
