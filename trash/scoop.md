# 安装
#scoop

## 将执行权限改为本地无需签名

```powershell
Set-ExecutionPolicy RemoteSigned -scope CurrentUser

` ``

## 设置 scoop 安装路径为 D:\scoop

```powershell
$env:SCOOP='D:\scoop'
[environment]::setEnvironmentVariable('SCOOP',$env:SCOOP,'User')
```

## 安装 scoop

```powershell
iwr -useb get.scoop.sh | iex
```
```powershell
Invoke-Expression (New-ObjectSystem.Net.WebClient).DownloadString('https://get.scoop.sh')

```

## 全局安装路径修改

```powershell
$env:SCOOP_GLOBAL='D:\scoop-g'
[environment]::setEnvironmentVariable('SCOOP_GLOBAL',$env:SCOOP_GLOBAL,'Machine')
```

# 常用指令
## 更换 Scoop-Core 源（可选）

可以选择更换为维护状态更为活跃的`scoop-Core` :[shovel](https://github.com/Ash258/Scoop-Core)

执行以下操作：

1.  `scoop install 7zip git`
2.  `scoop config SCOOP_REPO 'https://github.com/Ash258/Scoop-Core'`
3.  `scoop update`
4.  `scoop status`
5.  `scoop checkup`

## 帮助

```powershell
scoop help
```

## 搜索安卓相关软件

```powershell
scoop search android
```

## 安装 git #git

```powershell
scoop install git
```

## 给所有用户安装 git

```powershell
sudo scoop install git --global # 需要先安装 sudo
```

## 卸载 git

```powershell
scoop uninstall git
```

## 卸载程序并移除所有配置文件
```powershell
scoop uninstall <app> -p
```
## aria2 下载加速 

> Scoop 可以利用 aria2 来使用多连接下载。只需通过 Scoop 安装 aria2，之后所有下载都将使用它。

[[../vps/aria2 1]] 是什么

> aria2 是一个跨平台的快速而且可靠的下载工具，支持 HTTP(S)、FTP、BitTorrent、Metalink 等协议. 可以从多个来源 / 协议下载文件，并尝试利用最大下载带宽

**安装**

powershell

```powershell
scoop install aria2
```

**如果使用代理，有时需要通过如下命令关闭 aria2**

```powershell
scoop config aria2-enabled false
```

**aria2 配置参数**

powershell

```powershell
# aria2 在 Scoop 中默认开启
scoop config aria2-enabled true
# 关于以下参数的作用，详见aria2的相关资料
scoop config aria2-retry-wait 4
scoop config aria2-split 16
scoop config aria2-max-connection-per-server 16
scoop config aria2-min-split-size 4M
```

## 代理
### 设置代理
```powershell
scoop config proxy <协议>://[<用户名>:<密码>@]<域名>[:端口]
```
### 取消
```powershell
scoop config rm proxy
```
## 更新所有软件

```powershell
scoop update *
```

## 查看 Android Studio 的软件信息

```powershell
scoop info android-studio
```

## 删除软件的老版本

```powershell
scoop cleanup
```

## 列出已安装的名字中带有 adopt 的软件

```powershell
scoop list adopt # 不填写则列出所有已安装软件
```

## 切换软件版本

```powershell
scoop reset python27
```

# 添加软件源

- 添加软件源功能依赖于 git，请确保电脑中已经安装 git 并且配置好了环境变量（也可以使用 scoop 安装 git）

## 列出官方已知软件源

```powershell
scoop bucket known
```

## 添加额外软件源

```powershell
scoop bucket add extras # 推荐添加这个软件源，大部分软件都再这个源里
```

## 添加官方未知软件源

```powershell
scoop bucket add name gitrepo # name 处填写自定义的名字，gitrepo 处填写 git 地址
```
## scoop cache

清理软件缓存，通常是下载的软件安装包。以下命令清除所有缓存，即清空 Scoop 目录下的 cache 文件夹
```powershell
scoop cache rm *
```
# 附录：scoop 文件夹结构

scoop
apps # 软件文件夹，所有非全局安装的软件都在这
appname/current # 当前软件版本对应的文件夹的软链接，如果你对某个软件设置调用该文件夹下的软件（例如 maven 环境设为 current 目录，那么这个指向的软件永远都会是最新版本）
buckets # 软件源文件夹，所有软件的下载地址等元数据都保存在这里，内部文件夹都是由 git 形成的，因此也可以采用 git pull 来更新源。
cache # 软件安装包所在位置，如果遇到软件下载缓慢的情况，也可以用其他工具下载对应软件，然后修改文件名放置到这个目录下进行安装。
persist # 永久配置文件夹，大部分的软件的配置都会存到这个目录下，以保证软件最新版用的都是原来的配置。
shims # 软件二进制的超链接，基本所有的命令行工具都会在这个文件夹内建立一个超链接，目的是为了防止环境变量 PATH 受到过多污染。