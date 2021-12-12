#!/bin/bash

docker run -d --name mysql \
	-e MYSQL_ROOT_PASSWORD=nvidia \
	-p 13306:3306 \
	-v ~/data/mysql:/var/lib/mysql \
	mysql
