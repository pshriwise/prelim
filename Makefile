
all: pdf

pdf:
	cd paper && pdflatex summary.tex && bibtex summary && pdflatex summary && pdflatex summary

clean:
	git clean -df
