## **Overview** 
In the previous sections, you 
[Installed Kong Using Docker Compose](https://simplru.gelato.io/guides/install-kong-using-docker-compose)
and [Provisioned, Protected and Rate Limited your API](https://simplru.gelato.io/guides/protect-and-rate-limit-your-api). Lets take a deeper look at various configuration files. 

In this section, you will explore NGINX-KONG configurations files.  The two main files are:
1. NGINX.conf
2. NGINX-Kong.conf

## **Nginx.Conf**
**Location:/usr/local/kong** <br>
To view the **Nginx.conf** file, navigate to the Kong folder. <br>
**Note** If you are using a container, make sure you have SSH or shell access to Kong

```sh
$ cat </<path_to_location>/kong/nginx.conf
```
> Results
```sh
worker_processes auto;
daemon off;
pid pids/nginx.pid;
error_log logs/error.log notice;
worker_rlimit_nofile 1048576;
events {
worker_connections 16384;
multi_accept on;
}
http {
include 'nginx-kong.conf';
}
```
> Notice that last call is to the **nginx-kong.conf file** . Let's look at that file. <br>
<br>



## **Nginx-Kong.Conf** 
**Location:/usr/local/kong** <br>
To view the **Nginx-Kong.conf** file, navigate to the Kong folder. <br>
**Note** If you are using a container, make sure you have SSH or shell access to Kong
```sh
$ cat </<path_to_location>/kong/nginx-kong.conf
```
> Results
```sh
error_log logs/error.log notice;
error_log syslog:server=kong-hf.mashape.com:61828 error;
client_max_body_size 0;
proxy_ssl_server_name on;
underscores_in_headers on;
real_ip_header X-Forwarded-For;
set_real_ip_from 0.0.0.0/0;
real_ip_recursive on;
lua_package_path '?/init.lua;./kong/?.lua;;';
lua_package_cpath ';;';
lua_code_cache on;
lua_socket_pool_size 30;
lua_max_running_timers 4096;
lua_max_pending_timers 16384;
lua_shared_dict kong 4m;
lua_shared_dict cache 128m;
lua_shared_dict cache_locks 100k;
lua_shared_dict process_events 1m;
lua_shared_dict cassandra 5m;
lua_socket_log_errors off;
init_by_lua_block {
  require 'resty.core'
  kong = require 'kong'
	   kong.init()
init_worker_by_lua_block {
  kong.init_worker()
	}
proxy_next_upstream_tries 999;
upstream kong_upstream {
  server 0.0.0.1;
	"/usr/local/kong/nginx-kong.conf" 159L, 3677C
	upstream kong_upstream {
	server 0.0.0.1;
	balancer_by_lua_block {
	  kong.balancer()
	   }
	   keepalive 60;
	}
map $http_upgrade $upstream_connection {
  default keep-alive;
  websocket upgrade;
	}
map $http_upgrade $upstream_upgrade {
  default '';
  websocket websocket;
	}
server {
  server_name kong;
  listen 0.0.0.0:8000;
  error_page 404 408 411 412 413 414 417 /kong_error_handler;
	error_page 500 502 503 504 /kong_error_handler;
access_log logs/access.log;
listen 0.0.0.0:8443 ssl;
ssl_certificate /usr/local/kong/ssl/kong-default.crt;
ssl_certificate_key /usr/local/kong/ssl/kong-default.key;
ssl_protocols TLSv1.1 TLSv1.2;
ssl_certificate_by_lua_block {
kong.ssl_certificate()
  }
location / {
	set $upstream_host nil;
  set $upstream_scheme nil;
rewrite_by_lua_block {
  kong.rewrite()
  }
```


## **Summary**
* Kong allows you to replace your existing NGINX implementation with Kong and still retain 100% of the old functionality.
* It leverages the OpenResty team directive to access everything in the event life cycle
* Additional functionality can be built through plugins, either through Kong or the community. 


## What Next
Lets look at the Kong conf file where you can customize and optimize your Kong environment. This is one of the most essential steps you will do. 

#### [Explore KONG Configuration Files](https://simplru.gelato.io/guides/explore-kong-configuration-file)

