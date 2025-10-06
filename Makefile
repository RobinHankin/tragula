all: tragula.bst tragula.cls
	./guidelinesmaker
	./permmaker
	./lorentzmaker
	./spraymaker
	./freegroupmaker
	./crinkledmaker
	./evitaicossamaker
	./contfracmaker
	./weylmaker
	./ellipticmaker
	./mvpmaker
	mv example_article_permutations.pdf example_article_lorentz.pdf example_article_spray.pdf example_article_freegroup.pdf guidelines.pdf example_article_evitaicossa.pdf example_article_contfrac.pdf example_article_weyl.pdf example_article_residuetheorem.pdf example_article_mvp.pdf ./pdf_example_articles/

clean:
	rm -f *.log *.out *.aux *.tex *.bbl *.blg *.pdf *png *.Rnw *.bib *.jpg *.svg
	git checkout tragula_knot.pdf tragula_word.pdf ORCID_iD.pdf guidelines.Rnw template.bib

