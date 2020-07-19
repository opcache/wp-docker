# wp-docker
> WordPress网站专用docker容器环境

## 优势
> 1. 容器镜像采用基于docker容器alpine系统构建nginx+php+mariadb环境，网络采用docker host方式，日志可以获取到用户真实IP
>    地址   https://github.com/opcache/danmp
> 2. 可以支持lua waf拦截非法请求，可以自定义规则

## 默认参数
- 使用文档参考 https://aqzt.com/6645.html
- mysql默认密码为test123123
- 默认WEB路径/data/wwwroot/www.xxxxxx.cn
- 默认nginx配置路径/opt/nginx/conf.d
- 默认nginx waf配置路径/opt/nginx/conf.d/waf
- 默认nginx waf规则配置路径/opt/nginx/conf.d/waf/wafconf
- 默认nginx waf拦截日志/data/nginx-log/waflogs/waf.log

## 安装
```
cd /opt/
wget https://github.com/opcache/wp-docker/archive/master.zip
unzip master.zip
cd wp-docker-master
bash install.sh
```

## 卸载
```
cd wp-docker-master
bash uninstall.sh
```

## 重新加载nginx配置
```
cd wp-docker-master
bash reload.sh
```

## 启动容器
```
cd wp-docker-master
bash start.sh
```

## 停止容器
```
cd wp-docker-master
bash stop.sh
```

## 使用waf配置
```
cd wp-docker-master
bash nginx-waf.sh
```

## 一起来参与，分享交流,问题反馈
- 分享交流,问题反馈，请加 QQ 群： 7652650 （安全运维）
- https://aqzt.com/bubble/6644.html

## 友情技术支持站点

- <https://aqzt.com/>

-  <https://selinux.cn/>


## 感谢开源工具

- <https://github.com/loveshell/ngx_lua_waf>

-  <https://github.com/taihedeveloper/ngx_lua_waf>


