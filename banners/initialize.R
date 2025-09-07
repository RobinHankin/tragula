library(untb)
library(magic)  # needed for process()

process_ij <- function(x,nrows,ncols){
  x[,1] <- process(x,nrows)
  x[,2] <- process(x,ncols)
  return(x)
}

jj <- nrows*ncols

cols <- rgb(
    red   = rbeta(jj,2.4,1),
    blue  = rbeta(jj,2.4,1),
    green = rbeta(jj,2.4,1)
) 

cols <- sample(rainbow(jj))

cols[1] <- rgb(1,1,1)
cols[500] <- rgb(0,0,0)

o <-
  matrix(
      sample(c(as.census(rand.neutral(jj,theta=theta_start)))),
      nrows,ncols)


rsk <- function(n,l1,l2){
  rpois(n,l1)-rpois(n,l2)
}

rneighbour <- function(ij,nrows,ncols,include.self=FALSE){   # random neighbour; cf rsquare()
  
    i <- ij[1]
    j <- ij[2]
    if(include.self){
      choice <- sample(letters[1:5],1,prob=c(1,1,1,1,0))
    } else {
      choice <- sample(letters[1:4],1,prob=c(1,1,1,1))
    }
    out <- 
      rbind(switch(choice,
                   a = c(i,j+1),
                   b = c(i,j-1),
                   c = c(i+1,j),
                   d = c(i-1,j),
                   e = c(i+rsk(1,10,10),j+rsk(1,10,10))     # self
                   )
          )
    
    out[,1] <- process(out[,1],nrows)
    out[,2] <- process(out[,2],ncols)

    return(out)
}

dallneighbours <- function(ij,n){
    b <- c(-1L,1L)
    as.matrix(expand.grid(
        process(ij[1] + b,nx),
        process(ij[2] + b,ny)
    ))
}
   
plotu <- function(o, ...){
    e <- expand.grid(seq_len(nrow(o)),seq_len(ncol(o)))
    colnames(e) <- c("", "")
    
    plot(e[,2:1], col = cols[o], pch = 15, axes = FALSE,asp=1,xlab='',ylab='',...)
}

dist_sq <- function(ij,nrows,ncols){  ## squared distance from point ij
  jj <- matrix(NA,nrows,ncols)
  return((nrow(jj)-ij[1])^2 + (ncol(jj)-ij[2])^2)
}


kernel_curve  <- function(distsq){1/distsq}





