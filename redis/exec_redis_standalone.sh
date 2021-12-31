#!/bin/bash

docker run -d --name redis-standalone \
	-v ~/data/redis-standalone:/data \
	-p 6379:6379 \
	redis:latest

exit 0
