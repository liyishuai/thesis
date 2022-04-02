all: thesis.pdf

%.pdf:
	latexmk -pdf -file-line-error -halt-on-error -interaction=nonstopmode \
		-outdir=docs $*

clean:
	latexmk -C -outdir=docs
	$(RM) *~
