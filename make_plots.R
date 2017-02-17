## Please set the working directory to be the directory of repo "ExData_Plotting1" to run the make_plots.R script 

# Loading necessary libraries
library(data.table)

# Downloading “Individual household electric power consumption Data Set”  from  UC Irvine Machine Learning Repository and  read the data 
  input <- "curl https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip | funzip"
  firstLine = fread(input, nrows = 1)
  classes <- sapply(firstLine, class)
  houseHoldConsumption <- fread(input, header = TRUE, colClasses = classes, na.strings = "?")

# Subseting to dates 2007-02-01 and 2007-02-02, which have range observations required to build analysis plots
  index <- grepl("^[1-2]/2/2007", houseHoldConsumption$Date)
  houseHoldConsumption <- houseHoldConsumption[index,]
  rm(firstLine, index, classes, input)

# Coersing string characters of  Date and Time collumns to objects from classes Date and POSIXlt
  Sys.setlocale("LC_TIME", "en_US.UTF-8")
  datetime <- paste(houseHoldConsumption$Date, houseHoldConsumption$Time)
  houseHoldConsumption$Date <- as.Date(houseHoldConsumption$Date, "%d/%m/%Y")
  houseHoldConsumption$Time <- as.POSIXct.POSIXlt(strptime(datetime, format = "%d/%m/%Y %H:%M:%S", tz="UTC"))
  rm(datetime)
  
# Load the function thats creates png files for the plots below with a width of 480 pixels and a height of 480 pixels
  source("creates_png.R")
  
# First exploratory data analysis graph
  savepng(1)
  source("plot1.R")
# second exploratory data analysis graph
  savepng(2)
  source("plot2.R")
# Third exploratory data analysis graph
  savepng(3)
  source("plot3.R")
# Fourth exploratory data analysis graph
  savepng(4)
  source("plot4.R")
# Close all png devices 
  graphics.off() 