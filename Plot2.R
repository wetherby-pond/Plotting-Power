## Assuming household_power_consumption 1 - 2 Feb.csv in the current directory


plot2 <- read.csv("household_power_consumption 1 - 2 Feb.csv", sep=";")

dt <- as.numeric(as.POSIXct(paste(plot2$Date, plot2$Time), format="%Y-%m-%d %H:%M:%S"))


plot(dt,    plot2$Global_active_power,     type = "l",   xlab = "", ylab = "Global Active Power (kilowatts)", xaxt="n")
axis(1 , at=c(dt[1], dt[nrow(plot2)/2], dt[nrow(plot2)]), labels= c('Thu','Fri','Sat'))


dev.copy(png, 'plot2.png')
dev.off()




