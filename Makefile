all: tragula.bst tragula.cls
	./permmaker
	./lorentzmaker
	./spraymaker
	./freemaker
	./crinkledmaker
	./guidelinesmaker
	mv example_article_permutations.pdf example_article_lorentz.pdf example_article_spray.pdf example_article_freegroup.pdf guidelines.pdf ./pdf_example_articles/

clean:
	rm -f *.log *.out *.aux *.tex *.bbl *.blg *.pdf *png *.Rnw *.bib *.jpg *.svg
	git checkout tragula_knot.pdf tragula_word.pdf ORCID_iD.pdf guidelines.Rnw template.bib

