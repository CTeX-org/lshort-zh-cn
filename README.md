# 中文版 lshort，5.05 版

## 许可证

本文档以**GNU 自由文档许可证（1.3 版）**发布。详见文档中题为“GNU Free Documentation License”的章节，或者源代码文件 `fdl.tex`。

## 编译之前的准备

将发行版内的 `ctex` 宏包、`xeCJK` 宏包更新到最新（包括它们依赖的所有宏包），并确认 `lshort-zh-cn-style.sty` 调用的其它宏包都已正确安装并更新到最新。

本文档使用 `fandol` 字体包。`fontspec` 宏包会对此字体报 script-not-exist 的警告，可以无视。

## 编译方式

### 手动编译

在 src 目录下按照以下顺序编译：
```
xelatex lshort-zh-cn
makeindex -s lshort-zh-cn.ist lshort-zh-cn
xelatex lshort-zh-cn
```

如果编译正确生成 PDF，之后将 PDF 移动到根目录。

### 使用脚本和 Makefile 编译

Linux 下提供了 GNU make 可用的 Makefile，使用 GNU make 的顺序为：
```
make
make install
```

Windows 下在 src 目录提供批处理脚本 `make.bat`，双击执行编译。
