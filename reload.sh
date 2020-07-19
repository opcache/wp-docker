#!/bin/bash

dmin=$(docker ps |grep openresty |grep docker-nginx | awk  '{print $10}')
echo $dmin


if [ "$dmin" = "" ]
then
  echo "dmin is not set!"
dmin="docker-nginx"
else 
  echo "dmin is set !"
fi

docker exec -it $dmin  /bin/sh -c "/usr/local/openresty/bin/openresty -s reload"

