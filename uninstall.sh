#!/bin/bash


while true
do
echo "Database path:  /data/mysql"
echo "Web path:  /data/wwwroot"
	read -r -p "Do you want to uninstall? [Y/n] " input

	case $input in
	    [yY][eE][sS]|[yY])
			echo "Yes"
docker stop docker-mysql
docker rm docker-mysql
docker stop docker-php7
docker rm docker-php7
docker stop docker-nginx
docker rm docker-nginx
rm -rf /opt/nginx/
rm -rf /data/nginx-log
rm -rf /data/mysql
rm -rf /data/wwwroot
			exit 1
			;;

	    [nN][oO]|[nN])
			echo "No"
			exit 1	       	
			;;

	    *)
			echo "Invalid input..."
			;;
	esac
done

