# The Not So Short Introduction To LaTeX (Chinese Edition), v5.05

## License

This document is distributed under the **GNU Free Documentation License, version 1.3**.
For detailed information, see the section entitled 'GNU Free Documentation License' in the document, or the source code file `fdl.tex`.

## Preparation for typesetting
Update `ctex` and `xeCJK` (and all the packages they rely on) in your TeX distritusion. And make sure you've installed
all the other packages used in `lshort-zh-cn-style.sty` and updated them to the newest version.

This document uses `fandol` font package. You may receive a warning like 'script-not-exist' made by `fontspec` package. Just leave it alone.

## Typesetting

### Manually typesetting

In 'src' directory, typeset the source code in the following order:
```
xelatex lshort-zh-cn
makeindex -s lshort-zh-cn.ist lshort-zh-cn
xelatex lshort-zh-cn
```

If typesetting succeeds and the target PDF document is made correctly, then move it to the root directory.

### Using scripts and Makefile

For GNU/Linux and OS/X users, we provide Makefile in the 'src' directory. Use GNU make tool in the following order:
```
make
make install
```

For Windows users, we also provide a batch file `make.bat` in the 'src' directory, which you can double-click to do the typesetting.