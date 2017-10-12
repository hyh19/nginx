#!/bin/bash

## CentOS 7.4 ##

# curl -L https://github.com/mrhuangyuhui/nginx-practice/raw/master/install-nginx-yum-centos7.sh | sh

# 安装下载工具
yum install -y wget

# 下载 nginx 官方源
wget -O /etc/yum.repos.d/nginx.repo https://github.com/mrhuangyuhui/nginx-practice/raw/master/nginx-centos7.repo

# 安装 nginx
yum install -y nginx

# 打印 nginx 版本信息
nginx -v