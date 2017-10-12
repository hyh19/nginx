#!/bin/bash

# 安装 nginx 官方源
curl -o /etc/yum.repos.d/nginx.repo https://github.com/mrhuangyuhui/nginx-practice/raw/master/nginx-centos6.repo

yum install -y nginx
