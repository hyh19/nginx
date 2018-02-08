#!/usr/bin/env bash

# nginx 软件源配置文件的下载地址
REPO_DOWNLOAD_URL="https://github.com/mrhuangyuhui/nginx/raw/master/"

# nginx 软件源配置文件的保存路径
REPO_SAVE_PATH="/etc/yum.repos.d/nginx.repo"

# 下载源配置文件
function down_repo_file()
{
   # 如果源配置文件已经存在则删除
   if [ -e "${REPO_SAVE_PATH}" ]
   then
      rm -f "${REPO_SAVE_PATH}"
   fi
   wget -O "${REPO_SAVE_PATH}" "${REPO_DOWNLOAD_URL}"
}

# 安装 nginx
function install_nginx()
{
   yum install -y nginx
   nginx -V
}

# 打印脚本的使用方法
function print_script_usage() {
   echo "脚本的使用方法：./${0} {centos6|centos7}"
}

if [ "${#}" -eq 1 ]
then
   case "${1}" in
      centos6 | centos7)
         REPO_DOWNLOAD_URL="${REPO_DOWNLOAD_URL}nginx-${1}.repo"
         down_repo_file
         install_nginx
         exit 0
         ;;
      *)
         echo "错误：脚本参数不正确"
         print_script_usage
         exit 1
         ;;
   esac
else
   echo "错误：脚本参数的数量不正确"
   print_script_usage
   exit 1
fi
