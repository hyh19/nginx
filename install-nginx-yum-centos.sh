#!/bin/bash

# nginx 源配置文件下载地址
repo_url="https://github.com/mrhuangyuhui/nginx-practice/raw/master/"
repo_file="/etc/yum.repos.d/nginx.repo"

if [ "${#}" -eq 1 ]
then
   case "${1}" in
      "centos6")
         repo_url="${repo_url}nginx-centos6.repo"
         ;;
      "centos7")
         repo_url="${repo_url}nginx-centos7.repo"
         ;;
      *)
         exit 1
   esac
   
   # 判断源配置文件是否已经存在，如果已经存在则先删除再重新下载。
   if [ -e "${repo_file}" ]
   then
      echo "*** 源配置文件已经存在，先删除。 ***"
      rm -f "${repo_file}"
   fi
   echo "*** 下载源配置文件 ***"
   wget -O "${repo_file}" "${repo_url}"
fi

echo "[Usage] ${0} {centos6|centos7}"

# 安装 nginx
# yum install -y nginx

# 打印 nginx 版本信息
# nginx -v
