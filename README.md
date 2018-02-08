# Nginx

http://nginx.org/

http://nginx.org/en/docs/

https://www.nginx.com/

https://www.nginx.com/resources/admin-guide/

## Installation

http://nginx.org/en/docs/install.html \
http://nginx.org/en/linux_packages.html

### CentOS

#### epel-release
```bash
yum install epel-release -y
yum install nginx -y
nginx -v
nginx -V
```

#### nginx repository

To set up the yum repository for RHEL/CentOS, create the file named `/etc/yum.repos.d/nginx.repo` ([CentOS 6](https://github.com/mrhuangyuhui/nginx/blob/master/nginx-centos6.repo), [CentOS 7](https://github.com/mrhuangyuhui/nginx/blob/master/nginx-centos7.repo)) with the following contents:

```
[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/OS/OSRELEASE/$basearch/
gpgcheck=0
enabled=1
```
Replace “OS” with “rhel” or “centos”, depending on the distribution used, and “OSRELEASE” with “6” or “7”, for 6.x or 7.x versions, respectively.

[install-nginx-yum-centos.sh](https://github.com/mrhuangyuhui/nginx/blob/master/install-nginx-yum-centos.sh)

CentOS 6
```
[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/centos/6/$basearch/
gpgcheck=0
enabled=1
```

```bash
wget https://github.com/mrhuangyuhui/nginx/raw/master/install-nginx-yum-centos.sh && sh install-nginx-yum-centos.sh centos6
```

CentOS 7
```
[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/centos/7/$basearch/
gpgcheck=0
enabled=1
```

```bash
wget https://github.com/mrhuangyuhui/nginx/raw/master/install-nginx-yum-centos.sh && sh install-nginx-yum-centos.sh centos7
```

- ### Debian/Ubuntu

Sign the nginx packages and repository to the apt program keyring
```bash
$ wget http://nginx.org/keys/nginx_signing.key
$ sudo apt-key add nginx_signing.key
```

For Debian replace codename with Debian distribution codename, and append the following to the end of the `/etc/apt/sources.list` file:
```
deb http://nginx.org/packages/debian/ codename nginx
deb-src http://nginx.org/packages/debian/ codename nginx
```

For Ubuntu replace codename with Ubuntu distribution codename, and append the following to the end of the `/etc/apt/sources.list` file:
```
deb http://nginx.org/packages/ubuntu/ codename nginx
deb-src http://nginx.org/packages/ubuntu/ codename nginx
```

For Debian/Ubuntu then run the following commands:
```bash
$ apt-get update
$ apt-get install nginx
```

```bash
## Debian 7.11 ##
$ curl -L https://github.com/mrhuangyuhui/nginx/raw/master/install-nginx-debian7.sh | sh

## Debian 8.9 ##
$ curl -L https://github.com/mrhuangyuhui/nginx/raw/master/install-nginx-debian8.sh | sh

## Debian 9.2 ##
$ wget https://github.com/mrhuangyuhui/nginx/raw/master/install-nginx-debian9.sh && sh install-nginx-debian9.sh

## Ubuntu 14.04 ##
$ curl -L https://github.com/mrhuangyuhui/nginx/raw/master/install-nginx-ubuntu1404.sh | sh

## Ubuntu 16.04 ##
$ curl -L https://github.com/mrhuangyuhui/nginx/raw/master/install-nginx-ubuntu1604.sh | sh
```

### [Building nginx from Sources](http://nginx.org/en/docs/configure.html)

- ##### CentOS
https://github.com/mrhuangyuhui/nginx/blob/master/install-nginx-source-yum.sh

- ##### Debian/Ubuntu
https://github.com/mrhuangyuhui/nginx/blob/master/install-nginx-source-apt.sh

## Tutorials

http://nginx.org/en/docs/

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

## References

### Modules reference

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
