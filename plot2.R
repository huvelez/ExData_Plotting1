
# Load Clean Data Only if not already loaded
if(!exists("household_power_consumption")){
        source("prepare_data.R")
}

# Open PNG Device
png(filename='plot2.png',width=480,height=480,units='px')

# Plot Graph
plot(household_power_consumption$DateTime,household_power_consumption$GlobalActivePower,ylab='Global Active Power (kilowatts)', xlab='', type='l')

# Release Device
x<-dev.off()