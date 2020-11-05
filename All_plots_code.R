
# Codes starts here ---------

#Loading data (work directory is already set)
predata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")

#Subset data from 1/2/2007 to 2/2/2007
offc_data <- subset(data, Date %in% c("1/2/2007","2/2/2007"))

#Convert data into numeric
GAP <- as.numeric(official_data$Global_active_power)

#Plot1:
png(file="~/Desktop/plot1.png",width=480, height=480)
hist(GAP, col="red", main = "Global Active Power", xlab="Global active power (kilowatts)")
dev.off()

#Plot2:
official_data <- as.Date(official_data$Date, "%d/%m/%y")
Date_time <- paste(officialc_data$Date, official_data$Time)
official_data <- cbind(official_data, Date_time)
official_data$Date_time <- as.POSIXct(Date_time)
png(file="~/Desktop/plot2.png",width=480, height=480)
plot(official_data$Global_active_power ~ official_data$Date_time, type="l", ylab="Global Active Power (kilowatts)")
dev.off()

#Plot3
png(file="~/Desktop/plot3.png",width=480, height=480)
with(official_data, plot(Sub_metering_1 ~ Date_time, type="l", ylab="Global Active Power (kilowatts)"))
lines(official_data$Sub_metering_2 ~ official_data$Date_time,col='Red')
lines(official_data$Sub_metering_3 ~ official_data$Date_time,col='blue')
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

#Plot4
png(file="~/Desktop/plot4.png",width=480, height=480)
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
