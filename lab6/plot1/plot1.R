df <- read.csv("household_power_consumption.txt", sep=';')
df <- df[66637:69516,]

time <- strptime(df$Time, format = '%H:%M:%S',tz = "")
date <- as.Date(time, tryFormats = c("%Y-%m-%d", "%Y/%m/%d"))


df <- data.frame(date = date, time = time, df)


hist(as.numeric(df$Global_active_power), xlab = 'Global active power(kilowatts)', ylab = 'Freaquency', main = 'Global active power',
     col = 'red')
