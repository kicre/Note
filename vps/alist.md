# 一键安装脚本

```shell
curl -fsSL "https://alist.nn.ci/v3.sh" | bash -s install
```

更新

```shell
curl -fsSL "https://alist.nn.ci/v3.sh" | bash -s update
```

卸载

```shell
curl -fsSL "https://alist.nn.ci/v3.sh" | bash -s uninstall
```

获取密码

```shell
#进入安装文件夹
cd /opt/alist
# 随机生成一个密码
./alist admin random
# 手动设置一个密码,`NEW_PASSWORD`是指你需要设置的密码
./alist admin set NEW_PASSWORD
```

# 反向代理

## nginx
```conf
location / {
  proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
  proxy_set_header X-Forwarded-Proto $scheme;
  proxy_set_header Host $http_host;
  proxy_set_header X-Real-IP $remote_addr;
  proxy_set_header Range $http_range;
	proxy_set_header If-Range $http_if_range;
  proxy_redirect off;
  proxy_pass http://127.0.0.1:5244;
  # the max size of file to upload
  client_max_body_size 20000m;
}

```