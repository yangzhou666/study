#!/bin/bash

echo "启动应用"

sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

apk add tzdata && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" >  /etc/timezone

echo "APP_ENV=$APP_ENV"
echo "CONF_DRIVER=$CONF_DRIVER"
echo "APOLLO_SERVER_URL=$APOLLO_SERVER_URL"
echo "APOLLO_APP_ID=$APOLLO_APP_ID"
echo "APOLLO_ACCESS_KEY=$APOLLO_ACCESS_KEY"

# 数据迁移
/webser/go_wepapp/banwenyu/banwenyuctl migrate --conn default
# 启动web服务
/webser/go_wepapp/banwenyu/banwenyuctl web