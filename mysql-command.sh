#!/bin/bash

BASE=`dirname $0`

docker run \
  --privileged=true \
  --name mysql57-dev2 \
  -h mysql57-dev2 \
  -itd \
  -p 3323:22 \
  -p 3307:3306 \
  -e MYSQL_ROOT_PASSWORD=[passwd] \
  -e MYSQL_DATABASE=db1 \
  -e MYSQL_USER=user \
  -e MYSQL_PASSWORD=[user_passwd] \
  -e MYSQL_RANDOM_ROOT_PASSWORD=yes \
  -v /etc/localtime:/etc/localtime \
  mysql:5.7
