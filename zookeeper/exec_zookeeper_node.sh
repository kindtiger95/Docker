#!/bin/bash

docker run -d --name zookeeper[id] \
	-e ZOO_SERVER_ID=[id] \
	-e ZOO_SERVERS=[zoo1]:2888:3888,[zoo2]:2888:3888,[zoo3]:2888:3888 \
	-e ALLOW_ANONYMOUS_LOGIN=yes \
	bitnami/zookeeper

exit 0
