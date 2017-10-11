#!/bin/bash

## Ubuntu 14.04/16.04 ##

# curl -L https://github.com/mrhuangyuhui/nginx-practice/raw/master/install-nginx-source-ubuntu.sh | sh

# 更新软件库
apt-get update

# 安装编译工具
apt-get install -y build-essential libtool

# 安装依赖库
apt install -y libpcre3 libpcre3-dev zlib1g-dev openssl libssl-dev

# 安装其他工具
apt-get -y install curl tar

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
./configure --user=nginx --group=nginx --prefix=/usr/local/nginx/nginx-1.12.1 --with-http_stub_status_module --with-http_ssl_module --with-http_ssl_module
make
make install

# 创建符号链接
ln -s /usr/local/nginx/nginx-1.12.1 /usr/local/nginx/default

# 修改 PATH 环境变量
echo 'export PATH=$PATH:/usr/local/nginx/default/sbin' >> /etc/profile.d/nginx.sh

# 提示让环境变量生效
echo "Don't forget to run the command: source /etc/profile.d/nginx.sh"

