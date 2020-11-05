#Plot3
png(file="~/Desktop/plot3.png",width=480, height=480)
with(ofc_data, plot(Sub_metering_1 ~ Date_time, type="l", ylab="Global Active Power (kilowatts)"))
lines(official_data$Sub_metering_2 ~ official_data$Date_time,col='Red')
lines(official_data$Sub_metering_3 ~ official_data$Date_time,col='blue')
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
