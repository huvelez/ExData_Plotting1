# Load Clean Data Only if not already loaded
if(!exists("household_power_consumption")){
        source("prepare_data.R")
}

# Open PNG Device
png(filename='plot4.png',width=480,height=480,units='px')

# Divide Environment
par(mfrow=c(2,2))

# Plot Instructions
plot(household_power_consumption$DateTime,household_power_consumption$GlobalActivePower,ylab='Global Active Power',xlab='',type='l')

plot(household_power_consumption$DateTime,household_power_consumption$Voltage,xlab='datetime',ylab='Voltage',type='l')

lncol<-c('black','red','blue')

lbls<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')

plot(household_power_consumption$DateTime,household_power_consumption$SubMetering1,type='l',col=lncol[1],xlab='',ylab='Energy sub metering')

lines(household_power_consumption$DateTime,household_power_consumption$SubMetering2,col=lncol[2])

lines(household_power_consumption$DateTime,household_power_consumption$SubMetering3,col=lncol[3])

plot(household_power_consumption$DateTime,household_power_consumption$GlobalReactivePower,xlab='datetime',ylab='Global_reactive_power',type='l')

# Release Device
x<-dev.off()