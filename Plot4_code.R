par(mfrow=c(2,2), mar=c(4,4,2,1))
#Plot4a:
with(official_data, plot(Global_active_power ~ Date_time, type="l", ylab="Global Active Power (kilowatts)"))
#Plot4b:
with(official_data , plot(Sub_metering_1~Date_time, type="l", ylab="Global Active Power (kilowatts)"))
lines(official_data$Sub_metering_3 ~ official_data$Date_time,col='blue')
lines(official_data$Sub_metering_2 ~ official_data$Date_time,col='red')
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
#Plot4c
with(official_data, plot(Voltage~Date_time, type="l", ylab="Voltage (volt)", xlab=""))
#Plot4d:
with(official_data, plot(Global_reactive_power~Date_time, type="l", ylab="Global Rective Power (kilowatts)",xlab=""))
