
all: pdf

paper:
	cd paper && latex summary.tex && bibtex summary && latex summary && latex summary && dvipdfm summary.dvi 

paper-preview: paper
	cd paper && evince summary.pdf

presentation:
	cd presentation && pdflatex presentation.tex

preview-presentation: presentation
	cd presentation && evince presentation.pdf

.PHONY: paper presentation

clean:
	git clean -df
