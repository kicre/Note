解决大部分archlinux/manjaro蓝牙问题：

（有些包提示已有或是已经安装也要重新安装）

## 一、安装基本包

```shell
pacman -S bluez bluez-utils
```

# 二、安装与音频有关的包

```shell
pacman -S pulseaudio-bluetooth pavucontrol pulseaudio-alsa pulseaudio-bluetooth-a2dp-gdm-fix
```

# 三、修改配置文件`/etc/bluetooth/main.conf`

`FastConnectable=false`，取消注释，改为`FastConnectable=true`

`AutoEnable=false`，取消注释，改为`AutoEnable=true`

然后，重启！！！