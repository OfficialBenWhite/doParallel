#This script uses parallel processing if p.flag=TRUE.  Set up a parallel 
#cluster as appropriate for your machine as appropriate. (the commented code 
#below will use 2 cores on a multicore computer)
library(doParallel)
cl <- makeCluster(2)  # Use 2 cores
registerDoParallel(cl) # register these 2 cores with the "foreach" package
library(plyr)
p.flag=TRUE  # Change to TRUE if using parallel processing

aaply(seq(1,10000,100), function(x) rnorm(1, mean=x+(1:100), 
                                          .parallel=p.flag)
