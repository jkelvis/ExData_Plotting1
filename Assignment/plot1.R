download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "Electric power consumption.zip")
unzip("Electric power consumption")
data<-read.table("household_power_consumption.txt", header=T, na.strings="?", sep=";")
dat<-data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
GAP<-as.numeric(dat$Global_active_power)
png("plot1.png", 480, 480)
hist(GAP, xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power",col="red")
axis(side=2, at=c(200,400,600,800,1000,1200))
dev.off()