
# Load Clean Data Only if not already loaded
if(!exists("household_power_consumption")){
        source("prepare_data.R")
}

# Open PNG Device
png(filename='plot1.png',width=480,height=480,units='px')

# Draw Histogram
hist(household_power_consumption$GlobalActivePower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

# Release Device
x<-dev.off()