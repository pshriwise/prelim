
all: pdf

paper:
	cd paper && \
	ln -fs ../ans* ./ && \
	latex summary.tex && \
	bibtex summary && \
	latex summary && \
	latex summary && \
	dvipdfm summary.dvi 

paper-preview: paper
	cd paper && evince summary.pdf

presentation:
	cd presentation && \
	ln -fs ../ans* ./ && \
	cp ./uw-beamer-template/*.sty . && \
	pdflatex presentation.tex && \
	bibtex presentation.aux && \
	pdflatex presentation.tex && \
	rm *.sty

preview-presentation: presentation
	cd presentation && evince presentation.pdf

.PHONY: paper presentation

clean:
	git clean -df
