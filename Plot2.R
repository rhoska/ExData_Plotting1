# AUTHOR: Richard Hoska
# DESCRIPTION: Coursera - Exploratory Data Analysis - Week 1 Project
#   Project is designed to create 4 plots.
#   This script creates the second plot; a graph of active power by day
# DATE: July 10 2014
# PREREQUISITES: Assumes that Data Retrieval.R script has run and created variable ‘data’

# --- READ in the data 
data <- read.csv("data/household_power_consumption.txt", na.string="?", sep=";")

# --- FILTER to the desired dates
data <- data[(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]

# --- CREATE and ADD a date_time field
data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), 
                          format="%d/%m/%Y %H:%M:%S")

# --- OPEN PNG device
png("./figure/plot2.png", width=480, height=480)

# --- CREATE the plot
plot(data$DateTime, data$Global_active_power, type="l", 
     xlab="", ylab="Global Active Power (kilowatts)")

# --- CLOSE PNG device
dev.off()