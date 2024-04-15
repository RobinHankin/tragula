# Tragula example papers

There are four or five example papers that show the kind of tone and
content of a good Tragula submission:

* knotR
* lorentz
* permutations
* spray
* freegroup

The source files for the example papers are Rnw files held in cloned
repos [in earlier versions, submodules of reps].  To access these,
execute

./submod

(qv) on the commandline; this will create local clones of github repos
that contain Tragula-friendly vignettes.

To compile the example papers and create PDFs, first of all make sure
that all the packages are installed.  Type 'make' at the commandline
(this takes a couple of minutes to run).  The Makefile will use shell
scripts knotmaker, permmaker et seq.  These will copy Rnw files from
cloned package vignettes.  Then shellscript 'tragularize' will make
slight modifications to the Rnw files, so that Tragula style is used
rather than jss style.  The scripts then execute pdflatex and bibtex
to create PDF files such as 'example_article_knot.pdf' and four or
five others like it.
