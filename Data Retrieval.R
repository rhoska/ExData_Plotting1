# AUTHOR: Richard Hoska
# DESCRIPTION: Coursera - Exploratory Data Analysis - Week 1 Project
#   Project is designed to create 4 plots.
#   This script retrieves and processes data prior to plot genneration
# DATE: July 10 2014

# --- VALIDATE existance of destination folder
if(!file.exists("data")){dir.create("data")}

# --- CHECK to see if we have already downloaded the data file
if(!file.exists("data/household_power_consumption.txt"))
{
  # --- OUTPUT Status
  print("STATUS: Getting the file")

  # --- CREATE a variable to hold the source 
  fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  
  # --- GET the excel file to work with
  download.file(fileUrl, destfile="./data/household_power_consumption.zip", mode="wb")
  dateDownloaded <- date()
  
  # --- UNZIP the file - results in ~130 MB text file
  unzip(zipfile="data/household_power_consumption.zip", exdir="./data")

}else{print("INFO: You already have the file")}

# --- CHECK prerequisite variable 'data' exists
if (!exists("data$Date") & length(ls(.GlobalEnv, all.names=TRUE)) == 0){
  print("INFO: prerequisite variable 'data' does not exist.. GETTING") 

  # --- READ in the data 
  data <- read.csv("data/household_power_consumption.txt", na.string="?", sep=";")
  
  # --- FILTER to the desired dates
  data <- data[(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]
  
  # --- CREATE and ADD a date_time field
  data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), 
                            format="%d/%m/%Y %H:%M:%S")

  # --- OUTPUT Status
  print("STATUS: prerequisite variable 'data' has been SET") 
}else(print("INFO: prerequisite variable 'data' has previously been SET"))