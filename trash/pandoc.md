# Markdown用法

## 文件头示例
```yaml
---
title: "pandoc 使用"
author: 王恺
date: "2023-05-08"
subject: "Markdown"
keywords: [pandoc,101]
---
```

# 命令行语法

示例

```shell
pandoc test.md -f markdown -t html -s -o test.html
```

-f 设置输入文件的格式，-t 设置输出文件的格式，-s 表示生成文件。

