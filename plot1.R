## DATAFRAME
df <- read.table('household_power_consumption.txt', header = TRUE, sep = ';', na.strings = "?")
index <- (df['Date'] == "1/2/2007") | (df['Date'] == "2/2/2007")
main_df <- df[index,]

## Plot 1 
png(filename="plot1.png", width = 480, height = 480, unit = 'px')
hist(main_df$Global_active_power, col = 'red',xlab = 'Global Active Power (kilowatts)', ylab = 'Frequency', main = 'Global Active Power')
dev.off() 
