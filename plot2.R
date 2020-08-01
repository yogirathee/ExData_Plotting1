
setwd("C:/Users/YORAT/OneDrive - Vestas Wind Systems A S/Desktop/practice/ExData_Plotting1")


par(mfrow=c(1,1), mar=c(4,4,2,1), oma=c(0,0,2,0))

data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(data1$Date), data1$Time)
data1$Datetime <- as.POSIXct(datetime)

## Plot 2
with(data1, {
  plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})

dev.print(png, file="plot2.png", height=480, width=480)


