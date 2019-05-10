#!/bin/bash

BASEDIR=`dirname $0
#set vm.max_map_count=655360
echo "vm.max_map_count=655360" >> vi /etc/sysctl.conf 
sysctl -p

docker run \
  --privileged=true \
  --name es \
  -h es \
  -itd \
  -e ES_JAVA_OPTS="-Xms1g -Xmx1g" \
  -p 9200:9200 \
  -p 9300:9300 \
  -v /etc/localtime:/etc/localtime \
  docker.elastic.co/elasticsearch/elasticsearch:6.2.4