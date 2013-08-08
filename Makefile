all:
	latexmk -pvc -pdf thesis.tex

edit:
	vim -p thesis.tex introduction.tex methods.tex independent_set.tex bib.bib
