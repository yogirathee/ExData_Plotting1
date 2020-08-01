setwd("C:/Users/YORAT/OneDrive - Vestas Wind Systems A S/Desktop/practice/ExData_Plotting1")


par(mfrow=c(1,1), mar=c(4,4,2,1), oma=c(0,0,2,0))

data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
hist(data1$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

dev.print(png, file = "plot1.png", width = 480, height = 480)

