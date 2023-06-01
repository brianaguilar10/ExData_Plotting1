## DATAFRAME
df <- read.table('household_power_consumption.txt', header = TRUE, sep = ';', na.strings = "?")
index <- (df['Date'] == "1/2/2007") | (df['Date'] == "2/2/2007")
main_df <- df[index,]

## Plot 4
png(filename="plot4.png", width = 480, height = 480, unit = 'px')
par(mfrow = c(2, 2)) 
with(main_df, {
  plot(Global_active_power, type = 'l', xlab = '', xaxt = "n", ylab = 'Global Active Power (kilowatts)')
  axis(1, at = c(1,1440,2880), labels = c("Thu", "Fri", "Sat"))
  plot(Voltage, type = 'l', xlab = 'datetime', xaxt = "n", ylab = 'Voltage')
  axis(1, at = c(1,1440,2880), labels = c("Thu", "Fri", "Sat"))
  plot(1:nrow(main_df), main_df$Sub_metering_1, type="l", pch="o",  col="black", xlab = "", xaxt = "n", ylab="Energy sub metering", lty=1)
  lines(1:nrow(main_df), main_df$Sub_metering_2, col="red",lty=1)
  lines(1:nrow(main_df), main_df$Sub_metering_3, col="blue",lty=1)
  axis(1, at = c(1,1440,2880), labels = c("Thu", "Fri", "Sat"))
  legend("topright", cex=0.75, bty = "n", lty = 1, col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
  plot(Global_reactive_power,type = "l", xlab = 'datetime', xaxt = "n", ylab = 'Global_reactive_power')
  axis(1, at = c(1,1440,2880), labels = c("Thu", "Fri", "Sat"))
})
dev.off() 