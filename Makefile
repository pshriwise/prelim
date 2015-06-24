
all: pdf

pdf:
	cd paper && pdflatex summary.tex && bibtex summary && pdflatex summary && pdflatex summary

preview: pdf
	cd paper && evince summary.pdf

clean:
	git clean -df
