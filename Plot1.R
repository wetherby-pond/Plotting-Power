## Assuming household_power_consumption 1 - 2 Feb.csv in the current directory


plot1 <- read.csv("household_power_consumption 1 - 2 Feb.csv", sep=";")
hist(plot1$Global_active_power,  main="Global Active Power", ylab = "Frequency", xlab = "Global Active Power (kilowatts)", col="red")
dev.copy(png, 'plot1.png')
dev.off()

