all: tragula.bst tragula.cls
	./submod
	./knotmaker
	./permmaker
	./lorentzmaker
	./spraymaker

clean:
	rm *.log *.out *.aux *.tex *.bbl *.blg
