#!/bin/bash

docker network create \
--driver=bridge \
--subnet=192.168.40.0/24 \
--ip-range=192.168.40.0/24 \
--gateway=192.168.40.1 \
kafka-net