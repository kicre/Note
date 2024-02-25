添加速冻权限的三种方法

# 添加用户到 sudo 用户组

```shell
usermod -aG sudo kicre
```

# 修改 sudo 配置文件

```shell
visudo
```

在文件中添加以下内容

```conf
kicre ALL=（ALL）All
```

# 添加配置文件到 `/etc/sudoers.d/`中

```shell
tee /etc/sudoers.d/kicre <<< 'kicre ALL=(ALL) ALL'
```

赋予正确的权限
```shell
chmod 440 /etc/sudoers.d/kicre
```