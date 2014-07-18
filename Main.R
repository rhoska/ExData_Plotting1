# AUTHOR: Richard Hoska
# DESCRIPTION: Coursera - Exploratory Data Analysis - Week 1 Project
#   Project is designed to create 4 plots.
#   This script runs the 5 scripts needed to complete the assignment with friendly output
# NOTE: THIS WORK GOES ABOVE AND BEYOND WHAT IS REQUIRED FOR THE ASSIGNMENT - SEE NON _ADV R Scripts for grading!!!!!
# DATE: July 11 2014
# PREREQUISITES: Assumes that Data Retrieval.R script has run and created variable ‘data’

# --- OUTPUT Status
print("INFO: GET and PARSE the data")
source(file="Data Retrieval.R")

print("INFO: CREATE Plot1.png")
source(file="Plot1_ADV.R")

# --- WAIT for user to press enter 
readline("Press <Enter> to create Plot 2")

print("INFO: CREATE Plot2.png")
source(file="Plot2_ADV.R")

# --- WAIT for user to press enter
readline("Press <Enter> to create Plot 3")

print("INFO: CREATE Plot3.png")
source(file="Plot3_ADV.R")

# --- WAIT for user to press enter
readline("Press <Enter> to Plot 4")

print("INFO: CREATE Plot4_ADV.png")
source(file="Plot4.R")

print("INFO: SUCCESS! All plots created")

# --- WAIT for user to press enter
readline("Press <Enter> to Finish")