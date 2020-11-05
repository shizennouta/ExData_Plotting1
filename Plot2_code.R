#Loading data (work directory is already set)
predata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")

#Subset data from 1/2/2007 to 2/2/2007
ofc_data <- subset(data, Date %in% c("1/2/2007","2/2/2007"))

#Convert data into numeric
GAP <- as.numeric(ofc_data$Global_active_power)

#Plot2:
ofc_data <- as.Date(ofc_data$Date, "%d/%m/%y")
Date_time <- paste(ofc_data$Date, ofc_data$Time)
ofc_data <- cbind(ofc_data, Date_time)
ofc_data$Date_time <- as.POSIXct(Date_time)
png(file="~/Desktop/plot2.png",width=480, height=480)
plot(ofc_data$Global_active_power ~ ofc_data$Date_time, type="l", ylab="Global Active Power (kilowatts)")
