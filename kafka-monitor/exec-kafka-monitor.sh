#!/bin/bash

docker run -d --name kafka-monitor-test-server -p 15051:15050 \
	-e KAFKA_CLUSTERS_0_NAME=kafka-broker1 \
	-e KAFKA_CLUSTERS_0_BOOTSTRAPSERVERS=61.97.185.112:9092 \
	-e KAFKA_CLUSTERS_0_ZOOKEEPER=61.97.185.112:2181,61.97.185.112:2182,61.97.185.112:2183 \
	-e KAFKA_CLUSTERS_1_NAME=kafka-broker2 \
	-e KAFKA_CLUSTERS_1_BOOTSTRAPSERVERS=61.97.185.112:9093 \
	-e KAFKA_CLUSTERS_1_ZOOKEEPER=61.97.185.112:2181,61.97.185.112:2182,61.97.185.112:2183 \
	-e KAFKA_CLUSTERS_2_NAME=kafka-broker3 \
	-e KAFKA_CLUSTERS_2_BOOTSTRAPSERVERS=61.97.185.112:9094 \
	-e KAFKA_CLUSTERS_2_ZOOKEEPER=61.97.185.112:2181,61.97.185.112:2182,61.97.185.112:2183 \
	-e SERVER_PORT=15050 \
	provectuslabs/kafka-ui:latest

# docker network connect zookeeper_default kafka-monitor-local
# docker network connect kafka_default kafka-monitor-local

exit 0
