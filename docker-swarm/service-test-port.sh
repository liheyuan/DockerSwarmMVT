#!/bin/bash

IP=$(docker-machine ip node-1)

curl "http://$IP:8080"
