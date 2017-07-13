#!/bin/bash

MANAGER_NODE="node-1"
SERVICE_NAME="test"
NET_NAME="macvlan"

eval $(docker-machine env $MANAGER_NODE)

docker service ps --filter desired-state=running --format "{{.ID}}\t{{.Name}}\t{{.Node}}" $SERVICE_NAME | while read TASK_ID TASK_NAME TASK_ON_NODE;do
    eval $(docker-machine env $MANAGER_NODE)
    CONTAINER_ID=$(docker inspect --format "{{.Status.ContainerStatus.ContainerID}}" $TASK_ID)
    eval $(docker-machine env $TASK_ON_NODE)
    CONTAINER_IP=$(docker inspect $CONTAINER_ID | jq ".[0].NetworkSettings.Networks.$NET_NAME.IPAddress")
    echo -e $TASK_NAME"\t"$CONTAINER_IP
done
