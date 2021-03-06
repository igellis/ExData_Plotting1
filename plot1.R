#read data
df <- read.table(text = grep("^[1,2]/2/2007", 
                             readLines("household_power_consumption.txt"), 
                             value = TRUE), 
                 col.names = c("Date", 
                               "Time", 
                               "Global_active_power", 
                               "Global_reactive_power", 
                               "Voltage", 
                               "Global_intensity", 
                               "Sub_metering_1", 
                               "Sub_metering_2", 
                               "Sub_metering_3"), 
                 sep = ";", 
                 header = TRUE)


#make plot
hist(df$Global_active_power, col = 'red', main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

#create png file
png("plot1.png", 480, 480)
hist(df$Global_active_power, col = 'red', main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
