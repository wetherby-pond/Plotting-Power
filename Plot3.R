## Assuming household_power_consumption 1 - 2 Feb.csv in the current directory


plot3 <- read.csv("household_power_consumption 1 - 2 Feb.csv", sep=";")

SM1 <- plot3$Sub_metering_1
SM2 <- plot3$Sub_metering_2
SM3 <- plot3$Sub_metering_3


plot(SM1,         type = "l",   xlab = "", ylab = "Energy Sub Metering", xaxt="n")
axis(1 , at=c(1, nrow(plot3)/2, nrow(plot3)), labels= c('Thu','Fri','Sat'))
lines(SM2,  col="red")
lines(SM3,  col="blue")
legend('topright', c('Sub_metering_1','Sub_metering_3','Sub_metering_3'), 
       lty=1, col=c('black','red','blue'), cex=.75)

dev.copy(png, 'plot3.png')
dev.off()

