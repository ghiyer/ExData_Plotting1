library("data.table")
library("lubridate")
plot2Func <- function(){
      
      # Read the file
      fileName = "household_power_consumption.txt"
      dataSet = read.table(fileName, sep=";", header=T, stringsAsFactors = FALSE)
      subsetData = dataSet[dataSet$Date %in% c("1/2/2007","2/2/2007"),]

      #Join date and time for ploting at diff time
      dateTime = dmy_hms(paste(subsetData$Date, subsetData$Time, sep=" "))

      #Plotting...
      activePower = as.numeric(subsetData$Global_active_power)
      png("Plot2.png", width=480, height=480, bg="white")
      plot(dateTime, activePower, type="l", xlab="DateTime", ylab="Global Active Power(kilowatts)", font.lab=2)
      title("Global Active Power - DateTime")
      dev.off()   
      
      
}      
