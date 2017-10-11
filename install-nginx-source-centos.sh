#!/bin/bash

# 安装必要工具
yum install -y curl tar gcc make

# 安装依赖库
yum install -y pcre pcre-devel openssl openssl-devel zlib zlib-devel

# 创建安装文件夹
mkdir -p /usr/local/nginx

# 创建进程用户
useradd nginx -s /sbin/nologin -M

# 下载源码包
curl -O http://nginx.org/download/nginx-1.12.1.tar.gz

# 解压源码包
tar xf nginx-1.12.1.tar.gz
cd nginx-1.12.1

# 开始编译安装
./configure --user=nginx --group=nginx --prefix=/usr/local/nginx/nginx-1.12.1 --with-http_stub_status_module --with-http_ssl_module
make
make install

# 创建符号链接
ln -s /usr/local/nginx/nginx-1.12.1 /usr/local/nginx/default

# 修改环境变量
echo 'export PATH=$PATH:/usr/local/nginx/default/sbin' >> ~/.bash_profile

# 提示让环境变量生效
echo "Don't forget to run the command: source ~/.bash_profile."
