download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "Electric power consumption.zip")
unzip("Electric power consumption")
data<-read.table("household_power_consumption.txt", header=T, na.strings="?", sep=";")
dat<-data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
datetime<-strptime(paste(dat$Date, dat$Time), format="%d/%m/%Y %T")
SM1<-dat$Sub_metering_1
SM2<-dat$Sub_metering_2
SM3<-dat$Sub_metering_3
png("plot3.png", 480, 480)
plot(datetime, SM1, xlab="", ylab="Energy sub metering", main=NULL, type="l", col="black")
lines(datetime, SM2, col="red")
lines(datetime, SM3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), col=c("black", "red", "blue"),lty=c(1,1,1))
dev.off()