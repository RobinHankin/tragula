all: article_template.Rnw template.bib
	R CMD Sweave article_template.Rnw
	pdflatex article_template
	bibtex article_template
	pdflatex article_template
	pdflatex article_template
