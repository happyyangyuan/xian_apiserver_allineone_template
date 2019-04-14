#!/bin/bash

cd `dirname $0`
pwd

#如果logs文件夹不存在,那么创建一个
if [ ! -d "logs" ]; then
  mkdir logs
fi



nohup java -XX:-OmitStackTraceInFastThrow info.xiancloud.core.init.start.StartServer \
"${PWD##*/}" \
> logs/xianframe.log &

# </dev/null >/dev/null 2>&1 & # completely detached from terminal

sleep 0.2


