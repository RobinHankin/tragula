# Tragula example papers and guidelines

TLDR: type `make` at the command line.

This file describes how to create the guidelines document, and also
how to create a number of example papers that show the kind of tone
and content of a good Tragula submission:

* contfrac 
* crinkled_arc 
* evitaicossa 
* freegroup 
* lorentz 
* mvp 
* permutations 
* quadform 
* residuetheorem 
* spray 
* stokes 
* vfunc 
* weyl 


The source files for the example papers are Rnw files held in the
various repos [in earlier versions, submodules of repos].  The
Makefile executes shell scripts `contfracmaker`, `permmaker` et seq
which produce camera-ready PDF manuscripts.  These shell scripts
assume that the github repos are installed at base directory
`~/rstudio`; and that the requisite R packages are installed.  These
are accomplished by script `submod`, which only has to be executed
once.  The shellscripts are all broadly similar but differ in detail.
Using `stokesmaker` as an example:

```
#! /bin/bash

base_dir=~/rstudio

cp ${base_dir}/stokes/inst/stokes_tragula.Rnw ./stokes.Rnw
cp ${base_dir}/stokes/vignettes/stokes.bib .
cp ${base_dir}/stokes/man/figures/stokes.png .
./tragularize stokes.Rnw
R CMD Sweave example_article_stokes.Rnw 
pdflatex example_article_stokes
bibtex   example_article_stokes
pdflatex example_article_stokes
pdflatex example_article_stokes
```

We see that `stokesmaker` expects a clone of the `stokes` repo in base
directory `~/rstudio`.  It then copies some files from the repo.  It
then processes `stokes.Rnw` with `tragularize`, creating
`example_article_stokes.Rnw`.  This is a slight modification of
`stokes.Rnw`, the modifications ensuring that Tragula style is used
rather than jss style.  The shellscript then executes pdflatex and
bibtex to create PDF file `example_article_stokes.pdf`.  This is then
moved to directory `pdf_example_articles/`.  All the other `foomaker`
scripts do more or less the same thing.





