
f<-read.csv.sql("household_power_consumption.txt",sql="select * from file where Date = '1/2/2007' or Date ='2/2/2007'",sep=";")

f$fecha<-paste(f$Date,f$Time)

f$fecha<-strptime(f$fecha,format="%d/%m/%Y %H:%M:%S")

png(filename="Plot2.png", width=480, height=480)

plot(f$fecha,f$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",main="",xlab="")

dev.off()