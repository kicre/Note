# 命令行

```shell
- nginx -h：查看帮助
- nginx -v：查看nginx的版本
- nginx -V：查看版本和nginx的配置选项
- nginx -t：测试配置文件的正确性
- Nginx -T: 测试配置文件，并显示配置文件（这个命令可以快速查看配置文件）
- nginx -q：测试配置文件，但是只显示错误信息
- nginx -s：发送信号，下面详细介绍
- nginx -p：设置前缀
- nginx -c：设置配置文件
- nginx -g：附加配置文件路径
```

# Nginx 反代

在 `/etc/nginx/conf.d` 路径下添加`.conf`文件

```conf
server {
     listen       80;
     listen  [::]:80;
     server_name   kicre.top;   #域名

     location / {
         proxy_pass http://127.0.0.1:7300;    #需要映射到80端口的服务端口
     }
 }
```

例：alist

```conf

server {
		server_name  alist.kicre.top;
        listen       80;
        listen  [::]:80;
        location / {
                proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
                proxy_set_header Host $http_host;
                proxy_set_header X-Real-IP $remote_addr;
                proxy_set_header Range $http_range;
                proxy_set_header If-Range $http_if_range;
                proxy_redirect off;
                proxy_pass http://127.0.0.1:5244;
                # 上传的最大文件尺寸
                client_max_body_size 20000m;
		}
}

```