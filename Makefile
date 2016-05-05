
all: pdf

pdf: ps2png
	pdflatex prelim.tex && bibtex prelim && pdflatex prelim #&& dvipdfm prelim.dvi 

preview: pdf
	evince prelim.pdf

ps2png:
	cd images/ && \
	for file in *.ps ; do \
	convert -density 150 $$file "`basename $$file .ps`.png" ; \
	done
clean:
	rm *.aux *.dvi *.log *.toc *.pdf *.bbl *.blg 
