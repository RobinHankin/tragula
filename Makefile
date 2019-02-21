all: tragula.bst tragula.cls
	./submod
	./knotmaker
	./permmaker
	./lorentzmaker
	./spraymaker
	./freemaker

clean:
	rm -f *.log *.out *.aux *.tex *.bbl *.blg *.pdf *png *.Rnw *.bib *.jpg *.svg
	git checkout tragula_knot.pdf tragula_word.pdf article_template.Rnw

