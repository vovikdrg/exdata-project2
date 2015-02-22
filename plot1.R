if(!exists("NEI")){
    NEI <- readRDS("summarySCC_PM25.rds")
    SCC <- readRDS("Source_Classification_Code.rds")
    agg<-aggregate(Emissions ~ year, NEI, sum)
}


png("plot1.png")
plot(agg$year, agg$Emissions, type="b", 
     ylab=expression("Total" ~ PM[2.5] ~ "Emissions"),
     xlab="Year",
     main=expression("Total US" ~ PM[2.5] ~ "Emissions by Year"))

dev.off()