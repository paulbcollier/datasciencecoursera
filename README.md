README.md

This file names all the scripts involved in the final project of the Coursera "Getting and Cleaning Data" class, and how these scripts are connected.

Background: Per the project description, the data involved in this project come from a research study involving 30 subjects. Each subject was asked to perform 6 activities. The original data sets include data collected from the accelerometers on smart phones each subject carried with them while doing the activities. In the original data, observations for each participant were collected at several points in time while doing each activity. At each point in time, the smartphone reported 561 measures representing the movement of the participant along the x, y, and z axes. The original data was comprised of several files, accessible at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

File Management: This ReadMe file gives a narrative description of the work performed in this project to arrive at a tidy data set of averages for the standard deviations and means for each measure, organized by subject and activity. Another file, CodeBook.md, describes the columns in the final data set. A third file, run_analysis.R gives the code needed to replicate this data  cleaning project. It it assumed that any other individual who is replicating this code will organize their working directory in the same manner as I did below, so R will properly read in the relevant files.

Approach: First, I unzipped the file available at the URL above and saved it to my working directory. This resulted in a folder called "UCI HAR Dataset" sitting in my working directory, with the other related files sitting underneath it. I also leveraged two R packages, dplyr and tidyr, to perform the data cleaning tasks.

Before loading training and test data to R, I loaded two files, "features" and "activity_labels" which give descriptions of the smartphone measures collected and activities performed by subjects respectively. I then downloaded training and test data, using the col.names attribute to give each file descriptive column names.

Next, I combined the X_train and Y_train and X_test and Y_test data sets to arrive at one training and one testing data set. I also added a column to each to indicate whether each observation was from the test or train data. I appended the training data to the testing data, and used a "left_join" command to pull in meaningful activity descriptions given the activity numbering. 

Next, I used the "grep" function to identify columns containing mean and standard deviation measurements. Note that I did not include columns with a capitalized "Mean". Per the features_info file, these are "Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable". As such, they appear to be means of means, so to speak, and are of a different nature than the other mean and standard deviation measures in the data set. 

Having created a data set containing only the subjects, activities, mean and standard deviation measures, I used dplyr's summarise_all function to find the mean of each per subject and activity. Finally, I used write.table() to create a file named activityaverages.txt - this file contains the resulting data set. 

To access this data, you can enter the following command into R:

data <- read.table("activityaverages.txt", header = TRUE)