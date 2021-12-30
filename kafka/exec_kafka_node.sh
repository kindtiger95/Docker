#!/bin/bash

docker run -d --name kafka-broker1 \
	--network zoo-net \
	-e KAFKA_CFG_ZOOKEEPER_CONNECT=zookeeper1:2181,zookeeper2:2181,zookeeper3:2181 \
	-e ALLOW_PLAINTEXT_LISTENER=yes \
	-v ~/data/kafka-broker1:/bitnami/kafka \
	-p 9092:9092 \
	bitnami/kafka

exit 0
