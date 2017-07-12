#!/bin/bash

if [ $# != 1 ];then
    echo "Usage $0 <node_name>"
    exit 1
fi

docker-machine ip $1

