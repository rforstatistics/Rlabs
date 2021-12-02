NEI<-readRDS("C:/Users/y.stashchuk/Documents/exdata_data_NEI_data/summarySCC_PM25.rds")
SCC<-readRDS("C:/Users/y.stashchuk/Documents/exdata_data_NEI_data/Source_Classification_Code.rds")

png("plot2.png", width=480, height=480)
plot(Baltimore$year, Baltimore$Emissions, type = "l", xlab = "Year",  ylab = "Emissions of PM2.5 (tons)", main = "Total Emissions of PM2.5 from all Sources in Baltimore, Maryland", xaxt = "n")
axis(1, at = c(1999,2002,2005,2008), labels = c(1999,2002,2005,2008));
dev.off()