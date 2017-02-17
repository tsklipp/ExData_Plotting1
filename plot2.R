## Second analysis graph

# Construct the plot
  with(houseHoldConsumption, plot(Time, Global_active_power, type = "l", 
                                  ylab = "Global Active Power (kilowatts)", xlab="", xaxt=NULL))