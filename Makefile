all: thesis.pdf

%.pdf: %.tex
	latexmk -pdf -file-line-error -halt-on-error -interaction=nonstopmode \
		-jobname=docs/%A $*

clean:
	latexmk -C thesis
