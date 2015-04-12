# create png device
png("plot2.png", width=480, height=480, units="px", bg="transparent")

# create plot
with (hwrange, {
  plot(datetime, Global_active_power, type="n", ylab="Global Average Power (kilowatts)", xlab="")
  
  # add lines
  lines(datetime,Global_active_power)
})

# turn the device off to ensure writing to png complete
dev.off()