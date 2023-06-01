## DATAFRAME
df <- read.table('household_power_consumption.txt', header = TRUE, sep = ';', na.strings = "?")
index <- (df['Date'] == "1/2/2007") | (df['Date'] == "2/2/2007")
main_df <- df[index,]

## Plot 2
png(filename="plot2.png", width = 480, height = 480, unit = 'px')
plot(1:nrow(main_df),main_df$Global_active_power, type = 'l', xlab = '', xaxt = "n", ylab = 'Global Active Power (kilowatts)')
axis(1, at = c(1,1440,2880), labels = c("Thu", "Fri", "Sat"))
dev.off() 