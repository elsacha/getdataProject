###DESCRIPTION OF THE SCRIPT CONTAINED IN run_analysis.R

The purpose of the run_analysis.R script is to merge the test and training data sets, extract variables relating to mean and standard deviation values and finally compute the average value of each extracted variable for each activity and each subject and present data in a new tidy data set. 


It is assumed that the original data set is in the user's working directory and the folder is named ***UCI HAR Dataset***.

To perform this task I followed the 5 steps described in the project specification:


**Task 1** - Merge the training and the test sets to create one data set
* Load the test set
	+ load subjects from subject_test.txt
	+ load data from X_test.txt
	+ load activities from y_test.txt

* Load the training set
	+ load subjects from subject_train.txt
	+ load data from X_train.txt
	+ load activities from y_train.txt

* Merge the test and training sets (the training data test is appended below the test data set)
	+ Merge data
	+ Merge subjects
	+ Merge activities

* Add Activity column to the left of merged data
* Add Subjects column to the left of merged data
 the table
	 
**Task 2** - Extract only the measurements on the mean and standard deviation for each measurement

* keep columns only with mean and standard deviation  values (subject + activity+ 72 values = 74 columns). Column numbers were taken from features.txt file augmented by 2 to take account of the first two columns (subject and activity)
* give more convenient names to columns (cf. CodeBook.md)

**Task 3** - Use descriptive activity names to name the activities in the data set

* Load descriptive activity labels from activity_labels.txt


**Task 4** - Appropriately label the data set with descriptive activity names

**Task 5** Create a second, independent tidy data set with the average of each variable for each activity and each subject

* For this procedure I chose the aggregate function (the other alternative was to use reshape). I preferred to present data horizontally (having 74 columns and 180 rows) as this format appears to me more convenient for comparison of different subjects in this particular data set (the reshape package presents data vertically and you have to scroll down to compare subjects). Horizontal presentation is also closer to the presentation in the original data set.

* Save the new tidy data set with average values of each extracted variable for each activity and each subject in a text file ***"tidy_dataset.txt"*** (columns are separated by a space(default value), no quotation marks for factors are used, and no row numbers are recorded in the file).