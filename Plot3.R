
f<-read.csv.sql("household_power_consumption.txt",sql="select * from file where Date = '1/2/2007' or Date ='2/2/2007'",sep=";")

f$fecha<-paste(f$Date,f$Time)

f$fecha<-strptime(f$fecha,format="%d/%m/%Y %H:%M:%S")

png(filename="Plot3.png", width=480, height=480)

plot(f$fecha,f$Sub_metering_1,type="l",ylab="Energy sub metering",main="",xlab="")
lines (f$fecha,f$Sub_metering_2,col="red")
lines (f$fecha,f$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))

dev.off()