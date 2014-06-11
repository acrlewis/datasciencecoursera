## CodeBook.md

* Download data for the project from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Unzip getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* You should create one R script called run_analysis.R that does the following. 

 * Merges the training and the test sets to create one data set.
 * Extracts only the measurements on the mean and standard deviation for each measurement. 
 * Uses descriptive activity names to name the activities in the data set
 * Appropriately labels the data set with descriptive variable names. 
 * Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

* Create the R script
 ** nano run_analysis.R



* Test script
 * set the working directory
 * setwd("/Users/clewis1/Downloads/UCI HAR Dataset")
 * source('~/development/datasciencecoursera/run_analysis.R')
 * code will create tidy_data.csv and tidy_data_avg.csv file and place in the working directory
