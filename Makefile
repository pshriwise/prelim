
all: pdf

pdf:
	cd paper && latex summary.tex && bibtex summary && latex summary && latex summary && dvipdfm summary.dvi 

preview: pdf
	cd paper && evince summary.pdf

clean:
	git clean -df
