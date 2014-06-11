# read all the files in train
# add cnames
# add two additional "ID" columns
# - first from subject ID
# - second from activity ID
# do same for all test files
# merge train with test
# ensure tidy_data data
#

# read the files
# assign the headers

# grab the headers out of the "features.txt" file
data_cols <- read.table("features.txt", header=F, col.names=c("measureid", "measure"))

# read and set columns for subject_data
subject_data <- read.table("train/subject_train.txt", header = F, col.names = c("subject"))
subject_data <- rbind(subject_data, read.table("test/subject_test.txt", header = F, col.names = c("subject")))

# read and set columns for x_data
subset_cols <- grep(".*mean\\(\\)|.*std\\(\\)", data_cols$measure)
x_data <- read.table("train/X_train.txt", header = F, col.names = data_cols$measure)
x_data <- x_data[,subset_cols]
x_data_new <- read.table("test/X_test.txt", header = F, col.names = data_cols$measure)
x_data_new <- x_data_new[,subset_cols]
x_data <- rbind(x_data, x_data_new)

# read and set columns for y_data
y_data <- read.table("train/y_train.txt", header = F, col.names = c("activity"))
y_data <- rbind(y_data, read.table("test/y_test.txt", header = F, col.names = c("activity")))

# read and set activity labels
activity_labels <- read.table("activity_labels.txt", header=F, col.names=c("activity", "activityname"))
y_data$activity <- activity_labels[y_data$activity,]$activityname

# Produce the tidy_data data
tidy_data <- cbind(subject_data, y_data, x_data)
write.csv(tidy_data, "tidy_data.csv")

tidy_data_avg <- aggregate(tidy_data[,3:dim(tidy_data)[2]],list(tidy_data$subject,tidy_data$activity), mean)

names(tidy_data_avg)[1:2]<-c('subject', 'activity')
write.csv(tidy_data_avg, "tidy_data_avg.csv")
