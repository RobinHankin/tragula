all: tragula.bst tragula.cls
	submod
	knotmaker
	permmaker
	lorentzmaker

clean:
	rm *.log *.out *.aux *.tex *.bbl *.blg
