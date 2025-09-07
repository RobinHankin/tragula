library(elliptic)
p1 <- (1.1+0.19i)/2
p1 <- (1.1+0.209i)/2
p2 <- (5-9*p1)/2

 jjr <- seq(from=0,to=5,len=2000)
 jji <- seq(from=0,to=1,len=400)
 z <- outer(jjr,jji*1i,"+")
pdf(file="weierstrass.pdf",width=50)
view(jjr,jji,limit(P(0.03+0.03i+z,Omega=c(p1/2,p2/2))),real.contour=F,scheme=1,axes=FALSE,xlab='',ylab='')
dev.off()
 
