# Nginx Practice

http://nginx.org/

http://nginx.org/en/docs/

## Introduction

### [Installing nginx](http://nginx.org/en/docs/install.html)

#### [Installation on Linux](http://nginx.org/en/linux_packages.html)

##### CentOS

To set up the yum repository for RHEL/CentOS, create the file named `/etc/yum.repos.d/nginx.repo`([CentOS 6](https://gist.github.com/mrhuangyuhui/f36ba0110f60c1f1756a49d105ef292d#file-nginx-centos6-repo), [CentOS 7](https://gist.github.com/mrhuangyuhui/f36ba0110f60c1f1756a49d105ef292d#file-nginx-centos7-repo)) with the following contents:

```
[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/OS/OSRELEASE/$basearch/
gpgcheck=0
enabled=1
```

Replace “OS” with “rhel” or “centos”, depending on the distribution used, and “OSRELEASE” with “6” or “7”, for 6.x or 7.x versions, respectively.

##### Debian/Ubuntu

Sign the nginx packages and repository to the apt program keyring
```bash
$ wget http://nginx.org/keys/nginx_signing.key
$ sudo apt-key add nginx_signing.key
```

For Debian replace codename with Debian distribution codename, and append the following to the end of the `/etc/apt/sources.list` file:
```
deb http://nginx.org/packages/debian/ xenial nginx
deb-src http://nginx.org/packages/debian/ xenial nginx
```

For Ubuntu replace codename with Ubuntu distribution codename, and append the following to the end of the `/etc/apt/sources.list` file:
```
## Ubuntu 16.04 ##
deb http://nginx.org/packages/ubuntu/ xenial nginx
deb-src http://nginx.org/packages/ubuntu/ xenial nginx

echo 'deb http://nginx.org/packages/ubuntu/ xenial nginx' >> /etc/apt/sources.list
echo 'deb-src http://nginx.org/packages/ubuntu/ xenial nginx' >> /etc/apt/sources.list
```

For Debian/Ubuntu then run the following commands:
```bash
$ apt-get update
$ apt-get install nginx
```


Beginner's Guide
http://nginx.org/en/docs/beginners_guide.html

Command-line parameters
http://nginx.org/en/docs/switches.html

How nginx processes a request
http://nginx.org/en/docs/http/request_processing.html

Server names
http://nginx.org/en/docs/http/server_names.html

Using nginx as HTTP load balancer
http://nginx.org/en/docs/http/load_balancing.html

## Modules reference

Alphabetical index of directives
http://nginx.org/en/docs/dirindex.html

Alphabetical index of variables
http://nginx.org/en/docs/varindex.html

Core functionality
http://nginx.org/en/docs/ngx_core_module.html

Module ngx_http_core_module
http://nginx.org/en/docs/http/ngx_http_core_module.html

Module ngx_http_proxy_module
http://nginx.org/en/docs/http/ngx_http_proxy_module.html

Module ngx_http_fastcgi_module
http://nginx.org/en/docs/http/ngx_http_fastcgi_module.html
