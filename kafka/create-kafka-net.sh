#!/bin/bash

docker network create \
--driver=bridge \
--subnet=192.168.30.0/24 \
--ip-range=192.168.30.0/24 \
--gateway=192.168.30.1 \
kafka-net