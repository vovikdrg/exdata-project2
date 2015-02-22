if(!exists("NEI")){
    NEI <- readRDS("summarySCC_PM25.rds")
    SCC <- readRDS("Source_Classification_Code.rds")
    baltimorCity <- subset(NEI, fips == "24510")
    agg<-aggregate(Emissions ~ year, baltimorCity, sum)
    
}


png("plot2.png")
plot(agg$year, agg$Emissions, type="b", 
     ylab=expression("Total" ~ PM[2.5] ~ "Emissions"),
     xlab="Year",
     main=expression("Total Baltimor" ~ PM[2.5] ~ "Emissions by Year"))

dev.off()