#!/bin/bash

if [ $# != 1 ];then
    echo "Usage $0 <node_name>"
    exit 1
fi

echo -e "# Run this command to configure your shell"
echo -e "# eval \$(docker-machine env $1)"

