download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "Electric power consumption.zip")
unzip("Electric power consumption")
data<-read.table("household_power_consumption.txt", header=T, na.strings="?", sep=";")
dat<-data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
GAP<-as.numeric(dat$Global_active_power)
datetime<-strptime(paste(dat$Date, dat$Time), format="%d/%m/%Y %T")
png("plot2.png", 480, 480)
plot(datetime, GAP, xlab="", ylab="Global Active Power (kilowatts)", main=NULL, type="l")
dev.off()




