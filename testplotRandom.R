#################################
## testplotRandom.R
## 
## A short script to test the function
## written in plotrandom.R
##

## Load function into environment
source("plotrandom.R")

plotRandomNormals()
out <- plotRandomNormals()
str(out)

out2 <- plotRandomNormals(numpts=1000, mu=3, sigma=0.5,
                          numbins=18, meanColor = "green4",
                          seed=2020)
out2$Random_values
out2$Mean_x
out$SD_x

out3 <- plotRandomNormals(meanColor = "purple")

