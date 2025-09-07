library(elliptic)
 jjr <- seq(from=-5,to=5,len=2000)
 jji <- seq(from=-1,to=1,len=400)
 z <- outer(jjr,jji*1i,"+")
pdf(file="zeta.pdf",width=10)
view(jjr,jji,limit(zeta(z*6,c(1,1i))),real.contour=F,scheme=2,axes=FALSE,xlab='',ylab='')
dev.off()
 
