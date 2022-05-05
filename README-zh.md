[English](https://github.com/CTeX-org/lshort-zh-cn) | [中文](https://github.com/CTeX-org/lshort-zh-cn/blob/master/README-zh.md)

# 一份（不太）简短的 LaTeX2ε 介绍

[![CTAN](https://img.shields.io/ctan/v/lshort-zh-cn)](https://ctan.org/pkg/lshort-zh-cn)
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/CTeX-org/lshort-zh-cn)](https://github.com/CTeX-org/lshort-zh-cn/releases/latest)

## 许可证

本文档以 **GNU 自由文档许可证（1.3 版）** 发布。详见文档中题为「GNU Free Documentation License」的章节，或者源代码文件 `fdl.tex`。

## 编译之前的准备

将发行版内的 `ctex` 宏包、`xeCJK` 宏包更新到最新（包括它们依赖的所有宏包），并确认 `lshort-zh-cn-style.sty` 调用的其它宏包都已正确安装并更新到最新。

## 编译方式

### 手动编译

在 `src` 目录下按照以下顺序编译：

```sh
xelatex lshort-zh-cn
makeindex -s lshort-zh-cn.ist lshort-zh-cn
xelatex lshort-zh-cn
xelatex lshort-zh-cn
```

如果编译正确生成 PDF，之后将 PDF 移动到根目录。

### 使用脚本和 Makefile 编译

对于 GNU/Linux 或 macOS 用户，我们提供了 GNU make 所需的 Makefile，在 `src` 目录下执行以下命令进行编译：

```sh
make
make install
```

对于 Windows 用户，我们也在 `src` 目录提供了批处理脚本 `make.bat`，双击进行编译。

### 使用 latexmk 编译

在 `src` 目录下有可供 `latexmk` 构建工具使用的配置文件 `latexmkrc`。在 `src` 目录下执行 `latexmk` 命令进行编译，完成后将 PDF 文件移动到根目录。
