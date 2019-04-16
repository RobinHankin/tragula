# Tragula example papers

There are four or five example papers that show the kind of tone and
content of a good Tragula submission:

* knotR
* lorentz
* permutations
* spray
* freegroup

The source files for the example papers are Rnw files held in a
submodule.  To access these, execute

./submod

(qv) on the commandline; this will create local copies of github repos
that contain Tragula-friendly vignettes.

To compile the example papers and create PDFs, use shell scripts
knotmaker, permmaker et seq.  These will copy Rnw files from existing
package vignettes and modify the first line to use Tragula style
rather than jss style.  The scripts then execute pdflatex and bibtex
to create PDF files.

