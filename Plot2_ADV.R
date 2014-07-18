# AUTHOR: Richard Hoska
# DESCRIPTION: Coursera - Exploratory Data Analysis - Week 1 Project
#   Project is designed to create 4 plots.
#   This script creates the second plot; a graph of active power by day
# DATE: July 10 2014
# PREREQUISITES: Assumes that Data Retrieval.R script has run and created variable ‘data’

# --- OUTPUT Status
print("STATUS: CREATING Plot2.png") 

# --- VALIDATE existance of destination folder
if(!file.exists("figure")){dir.create("figure")}

# --- CHECK prerequisite variable 'data' exists
if (!exists("data$Date") & length(ls(.GlobalEnv, all.names=TRUE)) == 0){
  print("WARN: prerequisite variable 'data' does not exist") 
  source("./Data Retrieval.R")
}

# --- OPEN PNG device
png("./figure/plot2.png", width=480, height=480)

# --- CREATE the plot
plot(data$DateTime, data$Global_active_power, type="l", 
     xlab="", ylab="Global Active Power (kilowatts)")

# --- CLOSE PNG device
dev.off()

# --- OUTPUT Status
print("INFO: Plot2.png CREATED")