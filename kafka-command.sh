#!/bin/bash
BASE=`dirname $0`

docker run \
 -itd \
 --name kafka \
 -h kafka \
 --restart=always \
 --privileged=true \
 -e HOST_IP=localhost \
 --env KAFKA_ADVERTISED_HOST_NAME=[IP] \
 --env KAFKA_ADVERTISED_PORT=9092 \
 --env KAFKA_ZOOKEEPER_CONNECT=zookeeper:2181 \
 -e KAFKA_BROKER_ID=1 \
 -e ZK=zookeeper \
 -p 9092:9092 \
 --link zookeeper \
 -v /etc/localtime:/etc/localtime \
  wurstmeister/kafka:latest
