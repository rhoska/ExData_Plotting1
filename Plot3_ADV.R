# AUTHOR: Richard Hoska
# DESCRIPTION: Coursera - Exploratory Data Analysis - Week 1 Project
#   Project is designed to create 4 plots.
#   This script creates the second plot; a plot of sub metering
# DATE: July 11 2014
# PREREQUISITES: Assumes that Data Retrieval.R script has run and created variable ‘data’

# --- OUTPUT Status
print("STATUS: CREATING Plot3.png") 

# --- CHECK prerequisite variable 'data' exists
if (!exists("data$Date") & length(ls(.GlobalEnv, all.names=TRUE)) == 0){
  print("WARN: prerequisite variable 'data' does not exist") 
  source("./Data Retrieval.R")
}

# --- VALIDATE existance of destination folder
if(!file.exists("figure")){dir.create("figure")}

# --- OPEN PNG device
png("./figure/plot3.png", width=480, height=480)

# --- CREATE the plot
plot(data$DateTime, data$Sub_metering_1, type="l", 
     xlab="", ylab="Energy sub metering")
lines(data$DateTime, data$Sub_metering_2, col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1)

# --- CLOSE PNG device
dev.off()

# --- OUTPUT Status
print("INFO: Plot3.png CREATED")