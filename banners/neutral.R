## This is a modified version of the file at
## ~/Dropbox/neutral_spatial/ which creates a movie.  This file
## creates a banner for Tragula, 'neutral.pdf'.

set.seed(0)

nrows <- 20  # height
ncols <- 160   # width

theta_start <- 10
theta_ongoing <- 10
tsteps <- 100000


prob <- 2*theta_ongoing/(nrows*ncols)
  
include.self <- TRUE

source("initialize.R")  # sets up o and cols

sn2 <- seq_len(nrows*ncols)

tee <- 1
while(tee < tsteps){    tee <- tee + 1
  if(tee/1000==round(tee/1000)){print(tee)
    plotu(o)
  }
  ij <- cbind(sample(nrows,1),sample(ncols,1))
  if(runif(1) < prob){  # mutate
    o[ij] <- sample(which(!(sn2 %in% o)),1) # random
  } else { # reproduce
    jj <- rneighbour(ij,nrows,ncols,include.self=include.self)
    o[ij] <- o[jj]
  }
#    o[60,60] <- 500  # invasive species at 60,60
  
}

pdf(file="neutral.pdf")
plotu(o)
dev.off()





