# AUTHOR: Richard Hoska
# DESCRIPTION: Coursera - Exploratory Data Analysis - Week 1 Project
#   Project is designed to create 4 plots.
#   This script creates the first plot; a histogram of active power in KW
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
png("./figure/plot1.png", width=480, height=480)

# --- CREATE the histogram
hist(data$Global_active_power, 
     main="Global Active Power", 
     col="red", 
     xlab="Global Active Power (Killowats)")

# --- CLOSE PNG device
dev.off()