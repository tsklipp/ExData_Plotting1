## Fourth analysis graph

# Construct the plot
  par(mfcol = c(2,2))
  par(mar = c(5.1, 4.1, 4.1, 1.1))
  source("plot2.R")

  with(houseHoldConsumption, plot(Time, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab="", xaxt=NULL))
  with(houseHoldConsumption, points(Time, Sub_metering_2, type = "l", col = "red"))
  with(houseHoldConsumption, points(Time, Sub_metering_3, type = "l", col = "blue"))
  legend("topright", bty = "n", lwd=1, lty=c(1,1,1), col = c("black", "red", "blue"), legend = names(houseHoldConsumption)[7:9])
  
  with(houseHoldConsumption, plot(Time, Voltage, type = "l", ylab = "Voltage", xlab = "datetime"))
  with(houseHoldConsumption, plot(Time, Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime"))
  