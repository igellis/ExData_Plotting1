#read data
df <- read.csv("household_power_consumption.txt", header = T, sep = ';', 
         na.strings = "?", nrows = 2075259, check.names = F, 
         stringsAsFactors = F, comment.char = "", quote = '\"')


#make plot
df$Date <- as.Date(df$Date, format = "%d/%m/%Y")
df <- subset(df, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
datetime <- paste(as.Date(df$Date), df$Time)
df$Datetime <- as.POSIXct(datetime)

## Generating Plot 2
plot(df$Global_active_power ~ df$Datetime, type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "")

#create png file
png("plot2.png", 480,480)
plot(df$Global_active_power ~ df$Datetime, type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()



