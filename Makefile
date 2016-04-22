
all: pdf

pdf:
	pdflatex prelim.tex && bibtex prelim && pdflatex prelim #&& dvipdfm prelim.dvi 

preview: pdf
	evince prelim.pdf

clean:
	rm *.aux *.dvi *.log *.toc *.pdf *.bbl *.blg 
