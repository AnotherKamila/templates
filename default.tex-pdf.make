%.pdf: %.tex
	pdfcslatex $*.tex
	rm *.{aux,log,out}
