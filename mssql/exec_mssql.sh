#!/bin/bash

docker run -d --name mssql \
	-e 
	-v ~/data/mssql:/bitnami/kafka \
	-p 9092:9092 \
	bitnami/kafka

exit 0
