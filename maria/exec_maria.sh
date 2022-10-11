#!/bin/bash

docker run -d --platform linux/x86_64 \
	--name maria \
	-e MYSQL_ROOT_PASSWORD=1234 \
	-e TZ=Asia/Seoul \
	-p 3307:3306 \
	-v ~/data/maria:/var/lib/mysql \
	mariadb:10.7.3 \
	--character-set-server=utf8 \
	--collation-server=utf8_general_ci
