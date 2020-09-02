#### refer: https://www.jianshu.com/p/bafba7c04315

rm(list=ls())

library(RColorBrewer)
col <- brewer.pal(3,"Set1")[1]
t <- seq(0,60,len=100)
x <- -.01*(-t^2+40*t+1200)*sin(pi*t/180)
y <- .01*(-t^2+40*t+1200)*cos(pi*t/180)

plot(c(-12,14),c(0,20),type="n",axes=T,xlab="",ylab="")
polygon(x,y,col = col,border=NA)
polygon(-x,y,col = col,border=NA)
lines(x,y,lwd=2)
lines(-x,y,lwd=2)
polygon(x+3,y,col = col,border=NA)
polygon(-x+3,y,col = col,border=NA)
lines(x+3,y,lwd=2)
lines(-x+3,y,lwd=2)

arrows(-11,8,14,8,lwd=10,col = "gold")
arrows(14,8,-11,8,lwd=10,col = "gold",angle = 120)
arrows(14,8,-10,8,lwd=10,col = "gold",angle = 120)
arrows(14,8,-9,8,lwd=10,col = "gold",angle = 120)





