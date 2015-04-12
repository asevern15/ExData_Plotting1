# create png device
png("plot3.png", width=480, height=480, units="px", bg="transparent")

# create plot
with (hwrange, {
  plot(datetime, Sub_metering_1, type="n", ylab="Energy sub metering", xlab="")
  
  # add three lines
  lines(datetime, Sub_metering_1, col="black")
  lines(datetime, Sub_metering_2, col="red")
  lines(datetime, Sub_metering_3, col="blue")
})

# add legend
legend(x="topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red","blue"), lwd=1, lty=c(1,1,1), merge=FALSE, xjust=2, yjust=0)

# turn off device to ensure write completes
dev.off()