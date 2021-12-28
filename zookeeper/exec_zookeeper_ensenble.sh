#!/bin/bash

docker network create zoo-net --driver bridge

docker run -d --name zookeeper1 \
	--network zoo-net \
	-e ZOO_SERVER_ID=1 \
	-e ZOO_SERVERS=0.0.0.0:2888:3888,zookeeper2:2888:3888,zookeeper3:2888:3888 \
	-e ALLOW_ANONYMOUS_LOGIN=yes \
	bitnami/zookeeper

docker run -d --name zookeeper2 \
	--network zoo-net \
	-e ZOO_SERVER_ID=2 \
	-e ZOO_SERVERS=zookeeper1:2888:3888,0.0.0.0:2888:3888,zookeeper3:2888:3888 \
	-e ALLOW_ANONYMOUS_LOGIN=yes \
	bitnami/zookeeper

docker run -d --name zookeeper3 \
	--network zoo-net \
	-e ZOO_SERVER_ID=3 \
	-e ZOO_SERVERS=zookeeper1:2888:3888,zookeeper2:2888:3888,0.0.0.0:2888:3888 \
	-e ALLOW_ANONYMOUS_LOGIN=yes \
	bitnami/zookeeper
