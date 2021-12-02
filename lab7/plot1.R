NEI<-readRDS("C:/Users/y.stashchuk/Documents/exdata_data_NEI_data/summarySCC_PM25.rds")
SCC<-readRDS("C:/Users/y.stashchuk/Documents/exdata_data_NEI_data/Source_Classification_Code.rds")

sums2<-aggregate(Emissions~fips+year, NEI, sum)
Baltimore<-subset(sums2, fips=="24510")

##plot1

sums<-aggregate(Emissions~year, NEI, sum)
format(sums$Emissions,scientific=FALSE)

png("plot1.png", width=480, height=480)
plot(sums, type = "l", xlab = "Year",  ylab = "Emissions of PM2.5 (tons)", main = "Total Emissions of PM2.5 from all U.S. Sources", xaxt = "n")
axis(1, at = c(1999,2002,2005,2008), labels = c(1999,2002,2005,2008));
dev.off()