# AUTHOR: Richard Hoska
# DESCRIPTION: Coursera - Exploratory Data Analysis - Week 1 Project
#   Project is designed to create 4 plots.
#   This script creates the second plot; a collection of 4 plots
# DATE: July 11 2014
# PREREQUISITES: Assumes that Data Retrieval.R script has run and created variable ‘data’

# --- READ in the data 
data <- read.csv("data/household_power_consumption.txt", na.string="?", sep=";")

# --- FILTER to the desired dates
data <- data[(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]

# --- CREATE and ADD a date_time field
data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), 
                          format="%d/%m/%Y %H:%M:%S")

# --- VALIDATE existance of destination folder
if(!file.exists("figure")){dir.create("figure")}

# --- OPEN PNG device
png("./figure/plot4.png", width=480, height=480)

# --- CREATE the plot
par(mfrow=c(2, 2))

plot(data$DateTime, data$Global_active_power, type="l", 
     xlab="", ylab="Global Active Power")
plot(data$DateTime, data$Voltage, type="l", 
     xlab="datetime", ylab="Voltage")
plot(data$DateTime, data$Sub_metering_1, type="l", 
     xlab="", ylab="Energy sub metering")
lines(data$DateTime, data$Sub_metering_2, col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")
legend("topright", bty="n", lty=1, col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(data$DateTime, data$Global_reactive_power, type="l", 
     xlab="datetime", ylab="Global_reactive_Power")

# --- CLOSE PNG device
dev.off()