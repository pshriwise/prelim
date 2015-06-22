
all: pdf

pdf:
	cd paper && pdflatex summary.tex

clean:
	git clean -df
