library("data.table")
library("lubridate")
plot4Func <- function(){
      
      # Read the file
      fileName = "household_power_consumption.txt"
      dataSet = read.table(fileName, sep=";", header=T, stringsAsFactors = FALSE)
      subsetData = dataSet[dataSet$Date %in% c("1/2/2007","2/2/2007"),]
      subsetData[subsetData=="?"] = NA

      #Join date and time for ploting at diff time
      dateTime = dmy_hms(paste(subsetData$Date, subsetData$Time, sep=" "))
      globalActivePower <- as.numeric(subsetData$Global_active_power)
      
      #Plotting...
      activePower = as.numeric(subsetData$Global_active_power)
      reactivePower <- as.numeric(subsetData$Global_reactive_power)
      voltage <- as.numeric(subsetData$Voltage)
      subMeter1 = as.numeric(subsetData$Sub_metering_1)
      subMeter2 = as.numeric(subsetData$Sub_metering_2)
      subMeter3 = as.numeric(subsetData$Sub_metering_3)
      
      png("plot4.png", width=480, height=480)
      par(mfrow=c(2,2)) # sets 4 graphs in one page
      plot(dateTime, activePower, type="l", xlab="DateTime", ylab="Global Active Power(kilowatts)", font.lab=2)

      plot(dateTime, voltage, type="l", xlab="DateTime", ylab="Voltage", font.lab=2)

      plot(dateTime, subMeter1, type="l", xlab="DateTime", ylab="Energy Sub Metering", font.lab=2)
      lines(dateTime, subMeter2, type="l", col="red")
      lines(dateTime, subMeter3, type="l", col="blue")
      legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=1.5, col=c("black", "red", "blue"))

      plot(dateTime, reactivePower, type="l", xlab="DateTime", ylab="Global Reactive Power(kilowatts)", font.lab=2)
      dev.off()
      
}