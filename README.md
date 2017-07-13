# DockerSwarmMVT
 Minimum viable technology for Docker Swarm 

## Purpose
DockerSwarmMVT is an demo project.It is used to show the most common problem in Docker Swarm.
The logic are reduced to minimal, just to show Minimum viable technology in Docker Swarm.

### Functions
* docker-machine: create/remove/start/stop/rm/get-ip virtual-box node
* docker-image: DockerFile/build/push/tag image
* docker-swarn: overlay network, swarm join/leavem, service create/scale/list-task/list-task-ips
* macvlan: (Make container ip use local LAN's) macvlan network-create/container start/swarm+macvlan+service
