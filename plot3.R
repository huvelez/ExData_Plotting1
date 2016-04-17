# Load Clean Data Only if not already loaded
if(!exists("household_power_consumption")){
        source("prepare_data.R")
}

# Open PNG Device
png(filename='plot3.png',width=480,height=480,units='px')

# Draw Graph
lncol<-c('black','red','blue')

lbls<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')

plot(household_power_consumption$DateTime,household_power_consumption$SubMetering1,type='l',col=lncol[1],xlab='',ylab='Energy sub metering')

lines(household_power_consumption$DateTime,household_power_consumption$SubMetering2,col=lncol[2])

lines(household_power_consumption$DateTime,household_power_consumption$SubMetering3,col=lncol[3])

legend('topright',legend=lbls,col=lncol,lty='solid')

# Release Device
x<-dev.off()