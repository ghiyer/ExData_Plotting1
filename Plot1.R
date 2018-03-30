library("data.table")
library("lubridate")
plot1Func <- function(){
      
      # Read the file
      fileName = "household_power_consumption.txt"
      dataSet = read.table(fileName, sep=";", header=T, stringsAsFactors = FALSE)
      subsetData = dataSet[dataSet$Date %in% c("1/2/2007","2/2/2007"),]
      
      #Plotting...
      activePower = as.numeric(subsetData$Global_active_power)
      png("Plot1.png", width=480, height=480, bg="white")
      xticks = seq(0,6,2)
      yticks = seq(0,1200,200)
      hist(activePower, col="red",axes=FALSE, main="", xlab="Global Active Power(kilowatts)", font.lab=2)
      axis(1, at = xticks, labels = xticks, col.axis="blue", las=1)
      axis(2, at = yticks, labels = yticks, col.axis="blue", las=2)
      title("Global Active Power between 2007/02/01 and 2007/02/02")
      dev.off()
      
      
}      
