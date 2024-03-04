
    帖子： 46

Re: 怎么配置真无线蓝牙耳机

解决大部分archlinux/manjaro蓝牙问题：
（有些包提示已有或是已经安装也要重新安装）
一、安装基本包
pacman -S bluez bluez-utils
二、安装与音频有关的包
pacman -S pulseaudio-bluetooth pavucontrol pulseaudio-alsa pulseaudio-bluetooth-a2dp-gdm-fix
三、修改配置文件/etc/bluetooth/main.conf
FastConnectable=false，取消注释，改为FastConnectable=true
AutoEnable=false，取消注释，改为AutoEnable=true
然后，重启！！！