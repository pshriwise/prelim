
all: pdf

paper:
	cd paper && \
	ln -fs ../ans* ./ && \
	latex summary.tex && \
	bibtex summary && \
	latex summary && \
	latex summary && \
	dvipdfm summary.dvi 

preview-paper: paper
	cd paper && evince summary.pdf


ps2png:
	cd paper/figs/ && \
	for file in *.ps ; do \
	convert $$file "`basename $$file .ps`.png" ; \
	done

presentation: ps2png
	cd presentation && \
	ln -fs ../ans* ./ && \
	cp ./uw-beamer-template/*.sty . && \
	pdflatex -shell-escape presentation.tex && \
	bibtex presentation.aux && \
	pdflatex -shell-escape presentation.tex && \
	rm *.sty

preview-presentation: presentation
	cd presentation && evince presentation.pdf

.PHONY: paper presentation

clean:
	git clean -df
