#!/bin/bash

docker run -d --name kafka-monitor-local -p 15050:15050 \
	-e KAFKA_CLUSTERS_0_NAME=kafka-broker1 \
	-e KAFKA_CLUSTERS_0_BOOTSTRAPSERVERS=kafka-broker1:9092 \
	-e KAFKA_CLUSTERS_0_ZOOKEEPER=zookeeper1:2181 \
	-e KAFKA_CLUSTERS_1_NAME=kafka-broker2 \
	-e KAFKA_CLUSTERS_1_BOOTSTRAPSERVERS=kafka-broker2:9092 \
	-e KAFKA_CLUSTERS_1_ZOOKEEPER=zookeeper2:2181 \
	-e KAFKA_CLUSTERS_2_NAME=kafka-broker3 \
	-e KAFKA_CLUSTERS_2_BOOTSTRAPSERVERS=kafka-broker3:9092 \
	-e KAFKA_CLUSTERS_2_ZOOKEEPER=zookeeper3:2181 \
	-e SERVER_PORT=15050 \
	provectuslabs/kafka-ui:latest

docker network connect zookeeper_default kafka-monitor-local
docker network connect kafka_default kafka-monitor-local

exit 0
