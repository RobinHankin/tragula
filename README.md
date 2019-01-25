# tragula

To compile the example papers, use shell scripts knotmaker and
permmaker.  These will copy Rnw files from existing package vignettes
and modify the first line so that latex will use Tragula style rather
than jss style.



git submodule add https://github.com/RobinHankin/permutations.git permutations


Same for knot.Rnw:

git submodule add https://github.com/RobinHankin/knotR.git knotR
cp knotR/vignettes/* .
