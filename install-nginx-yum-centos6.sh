#!/bin/bash

# curl -L https://github.com/mrhuangyuhui/nginx-practice/raw/master/install-nginx-yum-centos6.sh | sh

# 下载 nginx 官方源
wget -O /etc/yum.repos.d/nginx.repo https://github.com/mrhuangyuhui/nginx-practice/raw/master/nginx-centos6.repo

# 安装 nginx
yum install -y nginx

# 打印 nginx 版本信息
nginx -V
