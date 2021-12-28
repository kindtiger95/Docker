#!/bin/bash

docker run -d --name kafka-broker1 \
	-e KAFKA_CFG_ZOOKEEPER_CONNECT=zookeeper1:2181,zookeeper2:2181,zookeeper3:2181 \
	-e ALLOW_PLAINTEXT_LISTENER=yes \
	-p 9092:9092 \
	bitnami/kafka

docker run -d --name kafka-broker2 \
        -e KAFKA_CFG_ZOOKEEPER_CONNECT=zookeeper1:2181,zookeeper2:2181,zookeeper3:2181 \
        -e ALLOW_PLAINTEXT_LISTENER=yes \
        -p 9093:9092 \
        bitnami/kafka

docker run -d --name kafka-broker3 \
        -e KAFKA_CFG_ZOOKEEPER_CONNECT=zookeeper1:2181,zookeeper2:2181,zookeeper3:2181 \
        -e ALLOW_PLAINTEXT_LISTENER=yes \
        -p 9094:9092 \
        bitnami/kafka

docker network connect zoo-net kafka-broker1
docker network connect zoo-net kafka-broker2
docker network connect zoo-net kafka-broker3

exit 0
