#Loading data (work directory is already set)
predata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")

#Subset data from 1/2/2007 to 2/2/2007
ofc_data <- subset(data, Date %in% c("1/2/2007","2/2/2007"))

#Convert data into numeric
GAP <- as.numeric(ofc_data$Global_active_power)
#Plot1:
png(file="~/Desktop/plot1.png",width=480, height=480)
hist(GAP, col="red", main = "Global Active Power", xlab="Global active power (kilowatts)")
dev.off()
