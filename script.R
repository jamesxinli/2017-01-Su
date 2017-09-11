setwd("C:/James/Box Sync/Work/Consulting/2017-01-Su")
x<-read.csv("dotplot-regression.csv")

plot(cbind(x[2],x[1]),pch=19,cex=1.5)
abline(lm(x$NR4A2~x$SNCA),col="blue",lwd=5)
lines(lowess(x$SNCA,x$NR4A2),col="red",lwd=5)

# Export the results
sink("regression.txt")
summary(lm(x$NR4A2~x$SNCA))
sink()
