
all: pdf

pdf: ps2png svg2png
	pdflatex prelim.tex && bibtex prelim && pdflatex prelim #&& dvipdfm prelim.dvi 

preview: pdf
	evince prelim.pdf

svg2png:
	cd images/ && \
	inkscape -z -e emdag_lost.png -w 545 -h 401 emdag_fng_lost.svg

ps2png:
	cd images/ && \
	for file in *.ps ; do \
	convert -density 150 $$file "`basename $$file .ps`.png" ; \
	done
clean:
	rm *.aux *.dvi *.log *.toc *.pdf *.bbl *.blg 
