## CodeBook.md
* This codebook.md file is intended to describe the process, variables, data, tranformations and work submitted for the course project in the class Getting and Cleaning Data - getdata-004 on Coursera.com

##First you must perform these tasks
* Download data for the project from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Unzip getdata-projectfiles-UCI HAR Dataset.zip to a directory in your home

##Thn create the R script
    nano run_analysis.R

##The script performs the following actions 
 * Merge the training and the test sets to create one data set.
 * Extracts only the measurements on the mean and standard deviation for each measurement. 
 * Uses descriptive activity names to name the activities in the data set
 * Appropriately labels the data set with descriptive variable names. 
 * Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

##Description of data/variables in tidy.csv
|Column Names|
|--------------|
|subject |
|activities |
|tBodyAcc.mean...X | 
|tBodyAcc.mean...Y | 
|tBodyAcc.mean...Z | 
|tBodyAcc.std...X | 
|tBodyAcc.std...Y | 
|tBodyAcc.std...Z | 
|tGravityAcc.mean...X | 
|tGravityAcc.mean...Y | 
|tGravityAcc.mean...Z | 
|tGravityAcc.std...X | 
|tGravityAcc.std...Y | 
|tGravityAcc.std...Z | 
|tBodyAccJerk.mean...X | 
|tBodyAccJerk.mean...Y | 
|tBodyAccJerk.mean...Z | 
|tBodyAccJerk.std...X | 
|tBodyAccJerk.std...Y | 
|tBodyAccJerk.std...Z | 
|tBodyGyro.mean...X | 
|tBodyGyro.mean...Y | 
|tBodyGyro.mean...Z | 
|tBodyGyro.std...X | 
|tBodyGyro.std...Y | 
|tBodyGyro.std...Z | 
|tBodyGyroJerk.mean...X | 
|tBodyGyroJerk.mean...Y | 
|tBodyGyroJerk.mean...Z | 
|tBodyGyroJerk.std...X | 
|tBodyGyroJerk.std...Y | 
|tBodyGyroJerk.std...Z | 
|tBodyAccMag.mean.. | 
|tBodyAccMag.std.. | 
|tGravityAccMag.mean.. | 
|tGravityAccMag.std.. | 
|tBodyAccJerkMag.mean.. | 
|tBodyAccJerkMag.std.. | 
|tBodyGyroMag.mean.. | 
|tBodyGyroMag.std.. | 
|tBodyGyroJerkMag.mean.. | 
|tBodyGyroJerkMag.std.. | 
|fBodyAcc.mean...X | 
|fBodyAcc.mean...Y | 
|fBodyAcc.mean...Z | 
|fBodyAcc.std...X | 
|fBodyAcc.std...Y | 
|fBodyAcc.std...Z | 
|fBodyAccJerk.mean...X | 
|fBodyAccJerk.mean...Y | 
|fBodyAccJerk.mean...Z | 
|fBodyAccJerk.std...X | 
|fBodyAccJerk.std...Y | 
|fBodyAccJerk.std...Z | 
|fBodyGyro.mean...X | 
|fBodyGyro.mean...Y | 
|fBodyGyro.mean...Z | 
|fBodyGyro.std...X | 
|fBodyGyro.std...Y | 
|fBodyGyro.std...Z | 
|fBodyAccMag.mean.. | 
|fBodyAccMag.std.. | 
|fBodyBodyAccJerkMag.mean.. | 
|fBodyBodyAccJerkMag.std.. | 
|fBodyBodyGyroMag.mean.. | 
|fBodyBodyGyroMag.std.. | 
|fBodyBodyGyroJerkMag.mean.. | 
|fBodyBodyGyroJerkMag.std.. | 


##Each record in the dataset shows:
* subject: The identifier of the subject who carried out the experiment
* activites: a label describing the activity performed by the subject
* Mean and StdDev for the triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration
* Mean and StdDev for the triaxial angular velocity from the gyroscope

##Test script
##set the working directory
    setwd("~/UCI HAR Dataset")
    source('~/development/run_analysis.R')
 * The code will create two files: 
     * tidy_data.csv
     * tidy_data_avg.csv 
 *  and place them in the working directory
