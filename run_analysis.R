run_analysis.R

# This script transforms the data contained in the UCI HAR Dataset to the tidy dataset described in the course project

library(dplyr)
library(tidyr)

# Pull in data about the variables
features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("activity", "activityname"))

# Download test data
testsubjects <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
testx <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$V2)
testy <- read.table("UCI HAR Dataset/test/Y_test.txt", col.names = "activity")

# Download training data
trainsubjects <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
trainx <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$V2)
trainy <- read.table("UCI HAR Dataset/train/Y_train.txt", col.names = "activity")

# Merge variables together within each dataset, and label the dataset
datatest <- cbind(testsubjects, testy, testx)
datatest$set <- rep("test", times = length(datatest$subject))

datatrain <- cbind(trainsubjects, trainy, trainx)
datatrain$set <- rep("train", times = length(datatrain$subject))

# Create one data set from testing and training
alldata <- rbind(datatest, datatrain)
alldata <- left_join(alldata, activity_labels, by="activity")

head <- head(alldata)

# Identify columns with mean and SD measures, plus identifying information
means <- grep("mean", names(alldata))
sds<-grep("std", names(alldata))

# Did not include the angle means at the end into this data set. Per the ReadMe these appear to "means of means" and are of a different nature than the means of each XYZ measurement.
subset<- c(1, means, sds, 565)
allmeanssds <- alldata[ , subset]
head <- head(allmeanssds)

# Create a data set with the average of each variable for each activity and each subject

averages <- allmeanssds %>% group_by(activityname, subject) %>% summarise_all(funs(average = mean))

# Results in a tidy data set with 180 rows. Note that because there are 30 subjects and 6 activities per subject, we would expect 180 rows. 

write.table(averages, "activityaverages.txt", row.names = FALSE )



