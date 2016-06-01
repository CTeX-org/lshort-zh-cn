LSHORT  = lshort-zh-cn
PDF     = $(LSHORT).pdf
REQUIRE = $(LSHORT).tex $(LSHORT)-style.sty $(LSHORT)-layout.tex $(LSHORT).ist
TEMP    = $(LSHORT).{aux,log,idx,ind,ilg,out,toc,los} $(LSHORT)-example.aux

TEX     = xelatex
MODE    = -interaction=nonstopmode
MAKEIDX = makeindex

RM      = rm -f
INSTALL = mv

all: $(PDF)

$(PDF): $(REQUIRE)
	$(TEX) $(MODE) $(LSHORT)
	$(MAKEIDX) -s $(LSHORT).ist $(LSHORT)
	$(TEX) $(MODE) $(LSHORT)

install: all
	$(INSTALL) $(LSHORT).pdf ..

clean:
	$(RM) $(TEMP)

distclean: clean
	$(RM) ../$(LSHORT).pdf

.PHONY: all install clean distclean