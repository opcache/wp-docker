#!/bin/bash


mkdir -p /opt/nginx/conf.d/rewrite
mkdir -p /data/wwwroot/www.xxxxxx.cn
/usr/bin/cp -R waf /opt/nginx/conf.d/
/usr/bin/cp -R rewrite /opt/nginx/conf.d/
/usr/bin/cp www.xxxxxx.cn.conf /opt/nginx/conf.d/
/usr/bin/cp info.php /data/wwwroot/www.xxxxxx.cn/

mkdir -p /data/mysql
mkdir -p /data/wwwroot/www.xxxxxx.cn
mkdir -p /data/nginx-log/www.xxxxxx.cn
mkdir -p /data/nginx-log/waflogs/
mkdir -p /opt/nginx/conf.d/rewrite
mkdir -p /opt/nginx/conf.d/waf
touch /data/nginx-log/waflogs/waf.log
chmod  777 /data/nginx-log/waflogs/waf.log

#docker pull opcache/danmp:openresty
#docker pull opcache/danmp:mariadb
#docker pull opcache/danmp:php-7.3.19

docker run -it -d  --name docker-mysql --net=host -v /data/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=test123123 opcache/danmp:mariadb
docker run -it -d  --name docker-php7 --net=host -v /data/wwwroot:/data/wwwroot   opcache/danmp:php-7.3.19
docker run -it -d  --name docker-nginx --net=host -v /data/nginx-log:/data/nginx-log -v /opt/nginx/conf.d:/etc/nginx/conf.d -v /data/wwwroot:/data/wwwroot -v /opt/nginx/conf.d/waf:/waf opcache/danmp:openresty

