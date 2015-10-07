
all: pdf

pdf:
	latex lr.tex && bibtex lr && latex lr && latex lr && dvipdfm lr.dvi 

preview: pdf
	evince lr.pdf

clean:
	git clean -df
