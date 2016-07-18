#### Data collection and Creation of Variables ####
dataFile <- "household_power_consumption.txt"
power <- read.table(dataFile, header=TRUE, sep=";")
power$Date <- as.Date(power$Date, format="%d/%m/%Y")
df <- power[(power$Date=="2007-02-01") | (power$Date=="2007-02-02"),]
df$Global_active_power <- as.numeric(as.character(df$Global_active_power))

### PLOT 1 CODE ###

plot1 <- function() {
    hist(df$Global_active_power, main = paste("Global Active Power"), col="red", xlab="Global Active Power (kilowatts)")
    dev.copy(png, file="plot1.png", width=480, height=480)
    dev.off()
    cat("Plot1.png has been saved in", getwd())
}
plot1()
