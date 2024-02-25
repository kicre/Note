#set text(
  font: "STSong",
  size: 12pt
)
#set page(
  paper: "a4",
  margin: (x: 1.8cm, y: 1.5cm),
  header: align(center)[
  河北大学学士论文
  ],
)
#set par(
  justify: true,
  leading: 0.52em,
)
#set heading(numbering: "1.a")

#align(center, text(36pt,font: "STXinwei")[
  *本科生毕业设计*
])
#align(center, text(28pt,font: "STXihei")[
  *智能手持式激光测距仪*
])

#grid(
  columns: (1fr, 2fr),
  align(center)[
    姓名 \
    学号 \
    院系 \
    专业 \
    指导教师 \
  ],
  align(center)[
    王恺 \
    20201804070 \
    质量技术监督学院 \
    测控技术与仪器 \
    刘琨 \
  ]
)


= 摘要

本课程设计项目设计了一款基于 LS-K-100激光测距模块和 ESP32 的高精度激光测距仪。该测距仪设计用于实现 100 米范围内的 ±2mm 高精度测量，适用于家装测量、工业控制等领域。报告从硬件选型、原理图 PCB 设计、软件编程到结构建模等方面，全面阐述了产品开发流程，并提供了详细的开发步骤和实现细节。通过本课程设计掌握硬件设计与软件编程的基础知识，提升解决实际问题的能力。未来工作可以进一步优化系统性能，如提高测量精度、降低功耗、增加无线通信功能等。

*关键词：* 激光测距；PLS-K-100；ESP32；高精度测量

  

= 第 1 章 设计目标与要求