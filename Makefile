
all: pdf

pdf:
	latex prelim.tex && bibtex prelim && latex prelim && latex prelim && dvipdfm prelim.dvi 

preview: pdf
	evince prelim.pdf

clean:
	git clean -df
