## CodeBook.md

* Download data for the project from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Unzip getdata-projectfiles-UCI HAR Dataset.zip to a directory in your home

##Create the R script
    nano run_analysis.R
 
##Merge the training and the test sets to create one data set.

 * Extracts only the measurements on the mean and standard deviation for each measurement. 
 * Uses descriptive activity names to name the activities in the data set
 * Appropriately labels the data set with descriptive variable names. 
 * Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


* Test script
 * set the working directory
 * setwd("~/UCI HAR Dataset")
 * source('~/development/run_analysis.R')
 * code will create tidy_data.csv and tidy_data_avg.csv file and place in the working directory
