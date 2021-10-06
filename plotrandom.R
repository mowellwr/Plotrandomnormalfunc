
## plotrandom.R
## Author: Will Mowell
## Date: 2021 Oct 6
##
## Purpose: 
## A function that will generate a random sample
## of lid normal random values. Then it will
## plot a histogram with an overlaid mean
## on the plot
##
## Inputs
## numpts = the number of points to generate
## mu = theoretical male of Normal distribution
## sigma = standard deviation of Normal distribution
## numbins = number of bins in histogram
## meanColor = color for overlaid mean
## seed = random number generator seed, using
## to ensure reproducibility
##
## Output: A list with following elements
## Random_values = vector or generated random
##                  "normal" values
## Mean_x = sample mean of Random_values
## SD_x = sample standard deviation of Random_values
##
##
plotRandomNormals <- function(numpts=100, mu=0, 
                              sigma=1, numbins=10,
                              meanColor="navy", seed=10062021) {
  set.seed(seed)
  rand_x <- rnorm(numpts, mean=mu, sd=sigma)
  mean_x <- mean(rand_x)
  hist(rand_x, breaks=numbins)
  abline(v = mean_x, col=meanColor, lwd=3)
  
  list(Random_values = rand_x,
       Mean_x = mean_x,
       SD_x = sd(rand_x))
}

plotRandomNormals()
