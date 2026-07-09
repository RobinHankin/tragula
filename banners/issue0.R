## This file shows how to create 18_5.png, which is used as an ident
## for issue 0.  First, execute this file in R.  This will make file
## f.pdf.  Then:
##

text <- "

pdfcrop --margins '-70 -10 -50 -120' f.pdf 18_5.pdf

pdftocairo -r 600 18_5.pdf -png
mv 18_5-1.png 18_5.png

"

## will make 18_5.pdf (not under version control).


library("elliptic")

pdf(file="f.pdf")
# figure 18.5, top of p643:
p <- parameters(Omega=c(1+0.1i,1+1i))
n <- 400

f <- function(r, i1, i2=1){seq(from = r+1i*i1, to = r+1i*i2, len=n)}
g <- function(i, r1, r2=1){seq(from = 1i*i+r1, to = 1i*i+2 , len=n)}

solid.lines <-
  c(
    f(0.1,0.5),NA,
    f(0.2,0.4),NA,
    f(0.3,0.3),NA,
    f(0.4,0.2),NA,
    f(0.5,0.0),NA,
    f(0.6,0.0),NA,
    f(0.7,0.0),NA,
    f(0.8,0.0),NA,
    f(0.9,0.0),NA,
    f(1.0,0.0)
  )
dotted.lines <-
  c(
    g(0.1,0.5),NA,
    g(0.2,0.4),NA,
    g(0.3,0.3),NA,
    g(0.4,0.2),NA,
    g(0.5,0.0),NA,
    g(0.6,0.0),NA,
    g(0.7,0.0),NA,
    g(0.8,0.0),NA,
    g(0.9,0.0),NA,
    g(1.0,0.0),NA
  )

plot(P(z=solid.lines, params=p),  xlim = c(-4,4), ylim = c(-6,0), type="l", asp=1, lwd=2)
lines(P(z=dotted.lines, params=p),xlim = c(-4,4), ylim = c(-6,0), type="l", lty=2, lwd=2)
dev.off()


