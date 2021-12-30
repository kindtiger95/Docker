#!/bin/bash

docker run -d --name zoo-monitor-local -p 15052:9000 \
	-e HTTP_PORT=9000 \
	elkozmon/zoonavigator:latest

docker network connect zookeeper_default zoo-monitor-local

exit 0
