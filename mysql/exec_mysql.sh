#!/bin/bash

docker run -d --name mysql \
	-e MYSQL_ROOT_PASSWORD=ibjang123 \
	-p 23306:3306 \
	-v ~/data/mysql:/var/lib/mysql \
	mysql
