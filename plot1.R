#create png device
png("plot1.png", width=480, height=480, units="px", bg="transparent")

# create plot
with (hwrange, 
      hist(Global_active_power, breaks=12, col="red", xlab = "Global Active Power (kilowatts)", main="Global Active Power"))

# turn device off to ensure write to png file
dev.off()