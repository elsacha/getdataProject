#Task 1 of the project specification
#Merge the training and the test sets to create one data set

#Load the data
#Load the test set
subjectsTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
dataTest <- read.table("./UCI HAR Dataset/test/X_test.txt")
activitiesTest <- read.table("./UCI HAR Dataset/test/y_test.txt") #activity IDs

#Load the training set
subjectsTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
dataTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
activitiesTrain <- read.table("./UCI HAR Dataset/train/y_train.txt") #activity IDs

#Merge the test and training sets (the training data test is appended below the test data set)
#Merge data
mergedData <- rbind(dataTest, dataTrain)

#Merge subjects
mergedSubjects <- rbind(subjectsTest, subjectsTrain)

#Merge Activities
mergedActivities <- rbind(activitiesTest, activitiesTrain)

#Add Activity column to the left of mergedData
mergedData <- cbind(mergedActivities, mergedData)

#Add Subjects column to the left of mergedData
mergedData <- cbind(mergedSubjects, mergedData)

#Task 2 - Extract only the measurements on the mean and standard deviation for each measurement.
#keep columns only with mean values (subject + activity+ 72 values = 74 columns)
#column numbers augmented by 2 to take account of the first two columns (subject and activity)
meansColnumbers <- c(3:8, 43:48, 83:88, 123:128, 163:168, 203:204, 229:230,
                     242:243, 255:256, 268:273, 347:352, 375:377, 426:431,
                     454:456, 505:506, 531:532, 541, 544:545, 561:563)

mergedData <- mergedData[,c(1:2, meansColnumbers)]

#give more convenient names to columns (cf. CodeBook.md)
means <-  c("tBodyAccMeanX", "tBodyAccMeanY", "tBodyAccMeanZ",
            "tBodyAccStdX", "tBodyAccStdY", "tBodyAccStdZ",
            "tGravityAccMeanX", "tGravityAccMeanY", "tGravityAccMeanZ",
            "tGravityAccStdX", "tGravityAccStdY", "tGravityAccStdZ",
            "tBodyAccJerkMeanX", "tBodyAccJerkMeanY", "tBodyAccJerkMeanZ",
            "tBodyAccJerkStdX", "tBodyAccJerkStdY", "tBodyAccJerkStdZ",
            "tBodyGyroMeanX", "tBodyGyroMeanY", "tBodyGyroMeanZ",
            "tBodyGyroStdX", "tBodyGyroStdY", "tBodyGyroStdZ",
            "tBodyGyroJerkMeanX", "tBodyGyroJerkMeanY", "tBodyGyroJerkMeanZ",
            "tBodyGyroJerkStdX", "tBodyGyroJerkStdY", "tBodyGyroJerkStdZ",
            "tBodyAccMagMean", "tBodyAccMagStd",
            "tBodyAccJerkMagMean", "tBodyAccJerkMagStd",
            "tBodyGyroMagMean", "tBodyGyroMagStd",
            "tBodyGyroJerkMagMean", "tBodyGyroJerkMagStd",
            "fBodyAccMeanX", "fBodyAccMeanY", "fBodyAccMeanZ",
            "fBodyAccStdX", "fBodyAccStdY", "fBodyAccStdZ",
            "fBodyAccJerkMeanX", "fBodyAccJerkMeanY", "fBodyAccJerkMeanZ",
            "fBodyAccJerkStdX", "fBodyAccJerkStdY", "fBodyAccJerkStdZ",
            "fBodyAccJerkMeanFreqX", "fBodyAccJerkMeanFreqY", "fBodyAccJerkMeanFreqZ",
            "fBodyGyroMeanX", "fBodyGyroMeanY", "fBodyGyroMeanZ",
            "fBodyGyroStdX", "fBodyGyroStdY", "fBodyGyroStdZ",
            "fBodyGyroMeanFreqX", "fBodyGyroMeanFreqY", "fBodyGyroMeanFreqZ",
            "fBodyAccMagMean", "fBodyAccMagStd",
            "fBodyBodyGyroMagMean", "fBodyBodyGyroMagStd",
            "fBodyBodyGyroMagMeanFreq",
            "fBodyBodyGyroJerkMagMean", "fBodyBodyGyroJerkMagStd",
            "angleXGravityMean", "angleYGravityMean", "angleZGravityMean")

colnames(mergedData) <- c("SubjectID", "ActivityName", means)

# Task 3 Use descriptive activity names to name the activities in the data set
#Load descriptive activity labels
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")

#Task 4 Appropriately label the data set with descriptive activity names
for (i in 1:nrow(mergedData)){
  mergedData[i,2] <- as.character(activityLabels[mergedData[i,2], 2])
}

# Task 5 - Create a second, independent tidy data set with the average of each variable 
# for each activity and each subject

aggData <-aggregate(mergedData[3:74],
                    by=list(SubjectID = mergedData$SubjectID,
                    ActivityName = mergedData$ActivityName), FUN=mean)


# save data frame to text file
write.table(aggData, file = "tidy_dataset.txt", row.names=FALSE, quote=FALSE)
