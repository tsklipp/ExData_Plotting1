## Third analysis graph

# Construct the plot 
  with(houseHoldConsumption, plot(Time, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab="", xaxt=NULL))
  with(houseHoldConsumption, points(Time, Sub_metering_2, type = "l", col = "red"))
  with(houseHoldConsumption, points(Time, Sub_metering_3, type = "l", col = "blue"))
  legend("topright", lwd=1, lty=c(1,1,1), col = c("black", "red", "blue"), legend = names(houseHoldConsumption)[7:9])