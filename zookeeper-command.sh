#!/bin/bash

BASE=`dirname $0`

docker run \
  --privileged=true \
  --name zookeeper \
  -h zookeeper \
  -itd \
  --restart="always" \
  -p 2181:2181 \
  -v /etc/localtime:/etc/localtime \
  zookeeper:latest