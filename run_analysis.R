# read the column names
data_cols <- read.table("features.txt", header=FALSE, col.names=c("measureid", "measure"))
 
subject_data <- read.table("train/subject_train.txt", header=FALSE, col.names=c("subject"))
subject_data <- rbind(subject_data, read.table("test/subject_test.txt", header=FALSE, col.names = c("subject")))

# names of subset columns required
subset_data_cols <- grep(".*mean\\(\\)|.*std\\(\\)", data_cols$measure)
  
# read the x data file
x_data <- read.table("test/x_test.txt", header=FALSE, col.names=data_cols$measure)
x_data <- x_data[,subset_data_cols]
x_datanew <- read.table("train/x_train.txt", header=FALSE, col.names=data_cols$measure)
x_datanew <- x_datanew[,subset_data_cols]
x_data <- rbind(x_data, x_datanew)

# read the y data file
y_data <- read.table("train/y_train.txt", header = FALSE, col.names = c("activity"))
y_data <- rbind(y_data, read.table("test/y_test.txt", header=FALSE, col.names = c("activity")))

activity_labels <- read.table("activity_labels.txt", header=FALSE, col.names=c("activity", "activityname"))
activities <- activity_labels[y_data$activity,]$activityname

# create a tidy data set that has the average of each variable for each activity and each subject.
tidy_data <- cbind(subject_data, activities, x_data)
tidy_data.avg <- aggregate(tidy_data[, 3:dim(tidy_data)[2]], list(tidy_data$subject, tidy_data$activity), mean)

names(tidy_data.avg)[1:2] <- c('subject', 'activity')

# create the tidy data set and tidy data avg and save it on to the named files
print("creating tidy dataset as tidy.csv...")
write.csv(tidy_data,"tidy.csv")
print("done.")

print("creating tidy dataset as tidy.csv...")
write.csv(tidy_data.avg,"tidy_avg.csv")
print("done.")

print("Tidy complete.")
