[English](https://github.com/CTeX-org/lshort-zh-cn) | [中文](https://github.com/CTeX-org/lshort-zh-cn/blob/master/README-zh.md)

# The Not So Short Introduction To LaTeX2ε (Chinese Edition)

[![CTAN](https://img.shields.io/ctan/v/lshort-zh-cn)](https://ctan.org/pkg/lshort-zh-cn)
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/CTeX-org/lshort-zh-cn)](https://github.com/CTeX-org/lshort-zh-cn/releases/latest)

## License

This document is distributed under the **GNU Free Documentation License, version 1.3**.
For detailed information, see the section entitled &ldquo;GNU Free Documentation License&rdquo; in the document, or the source code file `fdl.tex`.

## Preparation for typesetting

Update `ctex` and `xeCJK` (and all the packages they rely on) in your TeX distritusion. And make sure you've installed
all the other packages used in `lshort-zh-cn-style.sty` and updated them to the newest version.

## Typesetting

### Manually typesetting

In `src` directory, typeset the source code in the following order:

```sh
xelatex lshort-zh-cn
makeindex -s lshort-zh-cn.ist lshort-zh-cn
xelatex lshort-zh-cn
xelatex lshort-zh-cn
```

If typesetting succeeds and the target PDF document is made correctly, then move it to the root directory.

### Using scripts and Makefile

For GNU/Linux and macOS users, we provide Makefile in the `src` directory. Use GNU make tool in the following order:

```sh
make
make install
```

For Windows users, we also provide a batch file `make.bat` in the `src` directory, which you can double-click to do the typesetting.

### Using latexmk

We also provide `latexmkrc` configuration file for building with `latexmk` tool. Run the command `latexmk` in `src` directory for typesetting, then move the PDF document to the root directory.
