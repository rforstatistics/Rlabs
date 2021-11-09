df <- read.csv("household_power_consumption.txt", sep=';')
df <- df[66637:69516,]

time <- strptime(df$Time, format = '%H:%M:%S',tz = "")
date <- as.Date(time, tryFormats = c("%Y-%m-%d", "%Y/%m/%d"))

df <- data.frame(date = date, time = time, df)

par(mfrow=c(2,2))
plot(as.numeric(df$Global_active_power), ylab = 'Global active power(kilowatts)', xlab = '', type = 'l')

plot(as.numeric(df$Voltage),ylab = 'Voltage', xlab = 'datetime', type = 'l')

plot(as.numeric(df$Sub_metering_1), ylab = 'Energy sub metering', xlab = '', type = 'l')
lines(as.numeric(df$Sub_metering_2), col = 'red', type = 'l')
lines(as.numeric(df$Sub_metering_3), col = 'blue', type = 'l')
legend("topright", legend=c("Sub_metering_1", "Sub_metering_1", 'Sub_metering_3'),
       col=c("black","red", "blue"), lty = 1:2, cex=0.4)

plot(as.numeric(df$Global_reactive_power),ylab = 'Global_reactive_power', xlab = 'datetime', type = 'l')
