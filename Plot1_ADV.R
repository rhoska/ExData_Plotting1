# AUTHOR: Richard Hoska
# DESCRIPTION: Coursera - Exploratory Data Analysis - Week 1 Project
#   Project is designed to create 4 plots.
#   This script creates the first plot; a histogram of active power in KW
# DATE: July 10 2014
# PREREQUISITES: Assumes that Data Retrieval.R script has run and created variable ‘data’

# --- OUTPUT Status
print("STATUS: CREATING Plot1.png") 

# --- VALIDATE existance of destination folder
if(!file.exists("figure")){dir.create("figure")}

# --- CHECK prerequisite variable 'data' exists
if (!exists("data$Date") & length(ls(.GlobalEnv, all.names=TRUE)) == 0){
  print("WARN: prerequisite variable 'data' does not exist") 
  source("./Data Retrieval.R")
}

# --- OPEN PNG device
png("./figure/plot1.png", width=480, height=480)

# --- CREATE the histogram
hist(data$Global_active_power, 
     main="Global Active Power", 
     col="red", 
     xlab="Global Active Power (Killowats)")

# --- CLOSE PNG device
dev.off()

# --- OUTPUT Status
print("INFO: Plot1.png CREATED")