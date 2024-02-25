默认的安装中，IPv4 和 IPV6 并存，并且 IPv6 优先于 IPv4。如果不需要彻底关闭 IPv6，可以设置让 IPv4 优先于 IPv6。配置方式如下：

```shell
echo "precedence ::ffff:0:0/96 100" >>/etc/gai.conf
````

当然也可以直接修改 `/etc/gai.conf` 文件，找到下面这一行

```conf
#precedence ::ffff:0:0/96 100
```

把前面的`#`去掉即可。