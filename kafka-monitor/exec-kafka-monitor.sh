#!/bin/bash

docker run -d --name kafka-monitor-local -p 15052:8080 \
	-e KAFKA_CLUSTERS_0_NAME=kafka-broker1 \
	-e KAFKA_CLUSTERS_0_BOOTSTRAPSERVERS=192.168.30.101:9092 \
	-e KAFKA_CLUSTERS_0_ZOOKEEPER=zookeeper1:2181,zookeeper2:2181,zookeeper3:2181 \
	-e KAFKA_CLUSTERS_1_NAME=kafka-broker2 \
	-e KAFKA_CLUSTERS_1_BOOTSTRAPSERVERS=192.168.30.102:9092 \
	-e KAFKA_CLUSTERS_1_ZOOKEEPER=zookeeper1:2181,zookeeper2:2181,zookeeper3:2181 \
	-e KAFKA_CLUSTERS_2_NAME=kafka-broker3 \
	-e KAFKA_CLUSTERS_2_BOOTSTRAPSERVERS=192.168.30.103:9092 \
	-e KAFKA_CLUSTERS_2_ZOOKEEPER=zookeeper1:2181,zookeeper2:2181,zookeeper3:2181 \
	provectuslabs/kafka-ui:latest

docker network connect zookeeper_default kafka-monitor-local
docker network connect kafka_default kafka-monitor-local

exit 0
