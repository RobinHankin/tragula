all: tragula.bst tragula.cls
	./submod
	./knotmaker
	./permmaker
	./lorentzmaker
	./spraymaker
	./freemaker
	./authorguidelinesmaker
	mv example_article_knot.pdf example_article_permutations.pdf example_article_lorentz.pdf example_article_spray.pdf example_article_freegroup.pdf ./example_articles/

clean:
	rm -f *.log *.out *.aux *.tex *.bbl *.blg *.pdf *png *.Rnw *.bib *.jpg *.svg
	git checkout tragula_knot.pdf tragula_word.pdf ORCID_iD.pdf author_guidelines.Rnw template.bib

