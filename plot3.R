## DATAFRAME
df <- read.table('household_power_consumption.txt', header = TRUE, sep = ';', na.strings = "?")
index <- (df['Date'] == "1/2/2007") | (df['Date'] == "2/2/2007")
main_df <- df[index,]

## Plot 3
png(filename="plot3.png", width = 480, height = 480, unit = 'px')
plot(1:nrow(main_df), main_df$Sub_metering_1, type="l", pch="o",  col="black", xlab = "", xaxt = "n", ylab="Energy sub metering", lty=1)
lines(1:nrow(main_df), main_df$Sub_metering_2, col="red",lty=1)
lines(1:nrow(main_df), main_df$Sub_metering_3, col="blue",lty=1)
axis(1, at = c(1,1440,2880), labels = c("Thu", "Fri", "Sat"))
legend("topright", lty = 1, col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
dev.off() 