## Assuming household_power_consumption 1 - 2 Feb.csv in the current directory


plot4 <- read.csv("household_power_consumption 1 - 2 Feb.csv", sep=";")
par(mfrow=c(2,2))
##Plot1
dt <- as.numeric(as.POSIXct(paste(plot4$Date, plot2$Time), format="%Y-%m-%d %H:%M:%S"))
plot(dt,    plot4$Global_active_power,     type = "l",   xlab = "", ylab = "Global Active Power (kilowatts)", xaxt="n")
axis(1 , at=c(dt[1], dt[nrow(plot2)/2], dt[nrow(plot2)]), labels= c('Thu','Fri','Sat'))
##Plot2
volt <- plot4$Voltage
plot(dt, volt, type = "l",   xlab = "datetime", ylab = "Voltage", xaxt="n")
axis(1 , at=c(dt[1], dt[nrow(plot4)/2], dt[nrow(plot4)]), labels= c('Thu','Fri','Sat'))



## Plot3
SM1 <- plot4$Sub_metering_1
SM2 <- plot4$Sub_metering_2
SM3 <- plot4$Sub_metering_3


plot(SM1,         type = "l",   xlab = "", ylab = "Energy Sub Metering", xaxt="n")
axis(1 , at=c(1, nrow(plot3)/2, nrow(plot3)), labels= c('Thu','Fri','Sat'))
lines(SM2,  col="red")
lines(SM3,  col="blue")
legend('topright', c('Sub_metering_1','Sub_metering_3','Sub_metering_3'), 
       lty=1, col=c('black','red','blue'), cex=.75)

## Plot4
reactive <- plot4$Global_reactive_power
plot(dt, reactive, type = "l",   xlab = "datetime", ylab = "Global_reactive_power", xaxt="n")
axis(1 , at=c(dt[1], dt[nrow(plot4)/2], dt[nrow(plot4)]), labels= c('Thu','Fri','Sat'))

dev.copy(png, 'plot4.png')
dev.off()
