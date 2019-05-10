#!/bin/bash

#填入自己创建的es的IP与Port
BASEDIR=`dirname $0`

docker run \
  --privileged=true \
  --name kibana \
  -h kibana \
  -itd \
  --link es:elasticsearch \
  -e ELASTICSEARCH_URL=http://[elasticsearch-ip]:[port] \
  -p 5601:5601 \
  -v /etc/localtime:/etc/localtime \
  registry.docker-cn.com/elastic/kibana:6.2.4