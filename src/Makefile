LSHORT  = lshort-zh-cn
PDF     = $(LSHORT).pdf
REQUIRE = $(LSHORT).tex $(LSHORT)-style.sty $(LSHORT)-layout.tex $(LSHORT).ist
TEMP    = $(LSHORT).{aux,log,idx,ind,ilg,out,toc,los,synctex.gz} $(LSHORT)-example.aux

TEX     = latexmk -xelatex
MODE    = -interaction=nonstopmode -synctex=1
MAKEIDX = makeindex

RM      = rm -f
INSTALL = cp

all: $(PDF)

$(PDF): $(REQUIRE) FORCE_MAKE
	$(TEX) $(MODE) $(LSHORT)

install: all
	$(INSTALL) $(LSHORT).pdf ..

clean:
	$(TEX) -C $(LSHORT).tex

distclean: clean
	$(RM) ../$(LSHORT).pdf

.PHONY: all install clean distclean FORCE_MAKE
