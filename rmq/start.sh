#!/usr/bin/env bash

# 创建目录
mkdir -p ./rmqs/logs
mkdir -p ./rmqs/logs
mkdir -p ./rmqs/store

mkdir -p ./rmqs2/logs
mkdir -p ./rmqs2/store


mkdir -p ./rmq1/logs
mkdir -p ./rmq1/store

mkdir -p ./rmq1-slave/logs
mkdir -p ./rmq1-slave/store

mkdir -p ./rmq2/logs
mkdir -p ./rmq2/store

mkdir -p ./rmq2-slave/logs
mkdir -p ./rmq2-slave/store

# 设置目录权限
chmod -R 777 ./rmqs/logs
chmod -R 777 ./rmqs/store

chmod -R 777 ./rmqs2/logs
chmod -R 777 ./rmqs2/store


chmod -R 777 ./rmq1/logs
chmod -R 777 ./rmq1/store

chmod -R 777 ./rmq1-slave/logs
chmod -R 777 ./rmq1-slave/store

chmod -R 777 ./rmq2/logs
chmod -R 777 ./rmq2/store

chmod -R 777 ./rmq2-slave/logs
chmod -R 777 ./rmq2-slave/store

# 下载并启动容器，且为 后台 自动启动
# docker-compose up -d
docker-compose up

# 显示 rocketmq 容器
docker ps | grep rocketmq
