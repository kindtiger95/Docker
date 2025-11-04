#!/bin/bash

podman run -d --platform linux/arm64 \
	--name mysql \
	--restart no \
	-e MYSQL_ROOT_PASSWORD=1234 \
	-e TZ=Asia/Seoul \
	-p 3306:3306 \
	-v ~/data/mysql:/var/lib/mysql \
	mysql:8.0.44 \
	--character-set-server=utf8 \
	--collation-server=utf8_general_ci

exit 0

# docker run -d --platform linux/x86_64 \
#	--name mysql \
#	-e MYSQL_ROOT_PASSWORD=1234 \
#	-e TZ=Asia/Seoul \
#	-p 3306:3306 \
#	-v ~/data/mysql:/var/lib/mysql \
#	mysql:5.7.38 \
#	--character-set-server=utf8 \
#	--collation-server=utf8_general_ci
