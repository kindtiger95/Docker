#!/bin/bash

docker run -d --name mongodb -p 27017:27017 \
	-v ~/data/mongodb:/data/db \
	mongo:latest

exit 0
