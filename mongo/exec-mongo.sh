#!/bin/bash

docker run -d --name mongo -p 27017:27017 \
	-e MONGO_INITDB_ROOT_USERNAME=root \
	-e MONGO_INITDB_ROOT_PASSWORD=nvidia \
	-v ~/data/mongo:/data/db \
	mongo:latest

exit 0
