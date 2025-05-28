# Tragula example papers and guidelines

This file describes how to create the guidelines document, and also
how to create four or five example papers that show the kind of tone
and content of a good Tragula submission:

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
that all the packages [lorentz, permutations, spray, freegroup] are
installed.  Change to the top-level directory, then type 'make' at the
commandline (this takes a couple of minutes to run).

The Makefile executes the submod script to create clones of the
packages. It then executes shell scripts lorentzmaker, permmaker et
seq.  These will copy Rnw files from the cloned package vignettes.
Each one of these scripts calls 'tragularize', which makes slight
modifications to the Rnw files.  This ensures that Tragula style is
used rather than jss style.  The scripts then execute pdflatex and
bibtex to create PDF files such as 'example_article_lorentz.pdf' and
four or five others like it.  The PDF files are then moved to
directory pdf_example_articles/ and 'make clean' removes artifacts.


