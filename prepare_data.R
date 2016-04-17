# Load Libraries
library(data.table)
library(lubridate)

        
# Download the file
file.url<-'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
download.file(file.url,destfile='household_power_consumption.zip')

# Unzip file
unzip('household_power_consumption.zip',exdir='.',overwrite=TRUE)

# We will only be using data from the dates 2007-02-01 and 2007-02-02.
variable.class<-c(rep('character',2),rep('numeric',7))
household_power_consumption<-read.table('household_power_consumption.txt',header=TRUE, sep=';',na.strings='?',colClasses=variable.class)
household_power_consumption<-household_power_consumption[household_power_consumption$Date=='1/2/2007' | household_power_consumption$Date=='2/2/2007',]

# Variable names
cols<-c('Date','Time','GlobalActivePower','GlobalReactivePower','Voltage','GlobalIntensity','SubMetering1','SubMetering2','SubMetering3')
colnames(household_power_consumption)<-cols

#Convert Date + Time Fields
household_power_consumption$DateTime<-dmy(household_power_consumption$Date)+hms(household_power_consumption$Time)
household_power_consumption<-household_power_consumption[,c(10,3:9)]