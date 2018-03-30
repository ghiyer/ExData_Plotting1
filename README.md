## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we will be using the "Individual household
electric power consumption Data Set" which I have made available on
the course web site:


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Loading the data

* The text data file is read and the resultant dataset has 2,075,259 rows and 9 columns. 

* A subset of the above data for the dates 2007-02-01 and
2007-02-02 is taken. 

* The packages lubridate and data.table are used to read, subset and modify data.

* The missing values coded as `?` in the dataset are replaced with NA.


## Making Plots

The plots say how household energy usage varies over a 2-day period 
in February, 2007. All the plots are constructed
using the base plotting system.

The following GitHub repository:
[https://github.com/rdpeng/ExData_Plotting1](https://github.com/rdpeng/ExData_Plotting1)
has been forked and cloned.

The R files namely Plot1, Plot2, Plot3, Plot4  and their corresponding 
png files namely Plot1.png, Plot2.png, Plot3.png, Plot4.png 
are added to the above mentioned forked repository.



## PNG Files

* Each png file is of the width 480 and height 480.

* Name each of the plot file is the same as of its R file. 
  Example Plot1.R constructs Plot1.png, 
  Plot2.R constructs Plot2.png and so on.

* Each R file assumes that the text data file called 'household_power_consumption'
  is stored in the same dirctory as the R file.

* Plot1.png - A histogram showing the Global Active Power in Kilowatts
* Plot2.png - A line graph showing the Global Active Power in Kilowatts against Date/Time
* Plot3.png - A line graph showing the Energy Sub Metering against Date/Time
* Plot4.png - A chart containg 4 different graphs namely
              TopLeft - A line graph showing the Global Active Power in Kilowatts against Date/Time
              TopRight - A line graph showing the Voltage against Date/Time
              BottomLeft - A line graph showing the Energy Sub Metering against Date/Time
              BottomRight - A line graph showing the Global Reactive Power in Kilowatts against Date/Time


## Plot Files for refernce

The below four plots are for refernce.  

### Plot 1


![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 


### Plot 2

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 


### Plot 3

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png) 


### Plot 4

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5.png) 

