# 中文版 lshort 代码用到的命令

## 约定俗成的习惯

1. 在控制序列后面显式加空格时使用空分组 `{}`，如 `\LaTeX{} 命令`。
2. TeX 专有术语尽量使用 `\hologo` 宏排版。
3. 每章的 `\chapter` 命令后手动给 `.los` 目录写间距：

```
\addtocontents{los}{\protect\addvspace{10pt}}
```

## LaTeX 术语的表示方式

### 命令和环境名称

用 `\cmd` 和 `\env` 命令生成命令名 `\cmdname` / 环境名 `envname`，以等宽字体排版：
```
\cmd{cmdname}
\env{envname}
```
`cmdname` 参数不要带斜杠。名称内在必要的时候添加 `\-` 控制分词。

### 宏包和文档类名称

用 `\pkg` 和 `\cls` 命令生成宏包和文档类的名称，以无衬线字体排版。
```
\pkg{pkgname}
\cls{clsname}
```

### 命令参数

用 `\marg` 命令生成必选参数，用 `\oarg` 命令生成可选参数：
```
\marg{argument}
\marg*{argument}
\oarg{argument}
\oarg*{argument}
```
生成的参数自动包裹大括号和中括号。不带星号的版本生成 meta 形式的 &lt;*argument*&gt;。

```
\Arg{argument}
```
独立的 meta 形式 &lt;*argument*&gt;。结合 `\marg*` 和 `\oarg*` 可排版较复杂的参数形式如 key-value。比如

> \usepackage[&lt;*key1*&gt;=&lt;*value1*&gt;,...]{&lt;*pkgname*&gt;}   

使用如下命令排版：

> `\cmd{usepackage}\oarg*{\Arg{key1}=\Arg{value1},\ldots}\marg{pkgname}`

### 其它

CTAN 资源的链接使用以下命令：
```
\CTAN|link|
```
参数 `link` 为链接的子目录名称，如 `systems/win32/miktex`，`macros/contrib/...` 等。

## 索引

```
\cmdindex{cmdname}
\cmdindex[pkgname]{cmdname}
\envindex{envname}
\envindex[pkgname]{envname}
```
命令和环境的索引项。TeX 原始命令、LaTeX 内核和标准文档类命令用不带可选参数的形式；宏包/文档类的命令在可选参数里指定宏包名称。
`cmdname` 和 `envname` 可写多个命令和环境名，以逗号分隔（唯一例外的是 `\,` 命令）。

```
\pkgindex{pkgname}
\clsindex{clsname}
```
宏包和文档类的索引项。可写多个宏包和文档类名称，以逗号分隔。

```
\symindex{textsym}
```
文本符号索引项。可写多个命令，以逗号分隔。

```
\mathindex{mathcmd}
\msymindex{mathsym}
\maccindex{mathacc}
\waccindex{wideacc}
```
数学命令/符号/重音的索引项。可写多个命令，以逗号分隔。

```
\pinyinindex{hanzi}{汉字}
```
汉字索引项，通过拼音参与排序。

## 排版元素

```
\demowidth{length}
```
用 `\rule` 命令画的一个宽度示意符号。

**command 环境** 用表格生成的一个加框的命令展示环境，用 `\\` 换行。

**intro 环境** 每章开头的一个摘要环境。

**example 环境** 示例环境，生成源代码和示例效果。示例环境里不要涉及能分页的命令和浮动体。

**sourcecode 环境** 用于排版代码的浮动体，内部使用 `fancyvrb` 宏包的 Verbatim 环境。

