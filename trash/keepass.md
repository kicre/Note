### 匹配多个网址

KeePass 不能在一个条目填写多个匹配网址，但不同条目可以共享用户名、密码等字段数据，并且通过更改被引用的数据条目，所有其他条目也会同步使用更新值。^[[Field References-KeePass](https://link.zhihu.com/?target=https%3A//keepass.info/help/base/fieldrefs.html)]

比如 [http://163.com](https://link.zhihu.com/?target=http%3A//163.com) 和 [http://youdao.com](https://link.zhihu.com/?target=http%3A//youdao.com) 都使用网易账户，账号密码相同，根据网址建立了 2 个条目，将 [http://163.com](https://link.zhihu.com/?target=http%3A//163.com) 条目作为主条目，设置真实账户密码。双击进入 [http://youdao.com](https://link.zhihu.com/?target=http%3A//youdao.com) 条目，依次点击 Edit Entry 界面左下角的「工具-插入字段引用-在用户名/密码字段」，选中需要引用的条目。设置好后，字段旁边会有个分享符号，表明这是引用条目，会随主条目而更新。如果你想编辑引用字段，它会显示为 `{REF:P@I:8CC19B988F0F9D499459B741753BEE5F}`，更改账户密码只能在主条目上进行编辑。

![](https://pic4.zhimg.com/80/v2-6b1f3cbbf9c0646a0446d8222bdc22f3_720w.webp)