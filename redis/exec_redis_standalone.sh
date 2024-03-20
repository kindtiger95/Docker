#!/bin/bash

docker run -d --name redis \
	--restart unless-stopped\
	-v ~/data/redis:/data \
	-p 127.0.0.1:6379:6379 \
	redis:6.2.6

exit 0
