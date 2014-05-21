
## TIDY DATA SET EXTRACTED FROM THE ORIGINAL Human Activity Recognition Using Smartphones DatasetDATA SET

## CodeBook

### This data set was created based on the original Human Activity Recognition Using Smartphones Dataset. Please, refer to this [link]([]https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "Samsung data set")  for the full data set
 

In the new data set the original test and training data sets were merged. From the resulting data set only variables containing mean and standard deviation values were extracted. On the basis of this data, the average value of each extracted variable for each activity and each subject was computed and presented in a new tidy data set. Below you will find a brief description of the variables contained in the original data set and the list of the extracted variables.

### Variable renaming rules
Variables of the original data set were renamed in the tidy data set by deleting all non alphanumeric characters (/, ( ), -, etc.). For example, ***tBodyAcc-mean()-X*** was renamed to ***tBodyAccMeanX***. CamelCase notation was used. This was done in an effort to make the variable names more concise, easy to read and consistent with the actual width of the data in columns.

### Subjects
#### Column 1

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each individual is assigned a unique  identification number between 1 and 30 which is contained in column 1 of the resulting tidy data set.

### Activity names
#### Column 2
Each person performed six self-explanatory activities:
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

In the original data set these activities are labelled by their number from 1 to 6.
In the tidy data set each activity is labelled by its name (e.g. WALKING).

### Brief description of features in the original data set
Below you will find a brief description of features used in the experiment. For full details, please refer to  files ***features.txt*** and ***features_info.txt*** in the original data set.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.

The acceleration signal was separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ).

The second step consisted  in deriving the body linear acceleration and angular velocity in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals was calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

The final step was to apply a Fast Fourier Transform (FFT)  to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.

* Features starting with prefix 't' are time domain signals.
* Features with the 'f' prefix indicate frequency domain signals.
* '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.



### Average values of the extracted variables
#### Columns 3 - 74
####Purpose of data set transformation

The purposed of my work consisted in extracting  variables containing mean and standard deviation values from the original data set. I also decided to include  ***GravityMean*** and ***MeanFreq*** variables. As a final step I created a tidy data set with the average of each variable for each activity and each subject. The tidy data set contains 74 columns (1 column for subject IDs, 1 column for Activity Name and 72 columns containing the average values of the extracted variables).

Below you will find the list of all the extracted variables (the numbering corresponds to column numbers). I chose not to describe each variable individually since its meaning can be derived from the above brief description, ***features.txt*** and ***features_info.txt*** files. This is also the choice made in the original data set documentation.

1. SubjectID
2. ActivityName
3. tBodyAccMeanX
4. tBodyAccMeanY
5. tBodyAccMeanZ
6. tBodyAccStdX
7. tBodyAccStdY
8. tBodyAccStdZ
9. tGravityAccMeanX
10. tGravityAccMeanY
11. tGravityAccMeanZ
12. tGravityAccStdX
13. tGravityAccStdY
14. tGravityAccStdZ
15. tBodyAccJerkMeanX
16. tBodyAccJerkMeanY
17. tBodyAccJerkMeanZ
18. tBodyAccJerkStdX
19. tBodyAccJerkStdY
20. tBodyAccJerkStdZ
21. tBodyGyroMeanX
22. tBodyGyroMeanY
23. tBodyGyroMeanZ
24. tBodyGyroStdX
25. tBodyGyroStdY
26. tBodyGyroStdZ
27. tBodyGyroJerkMeanX
28. tBodyGyroJerkMeanY
29. tBodyGyroJerkMeanZ
30. tBodyGyroJerkStdX
31. tBodyGyroJerkStdY
32. tBodyGyroJerkStdZ
33. tBodyAccMagMean
34. tBodyAccMagStd
35. tBodyAccJerkMagMean
36. tBodyAccJerkMagStd
37. tBodyGyroMagMean
38. tBodyGyroMagStd
39. tBodyGyroJerkMagMean
40. tBodyGyroJerkMagStd
41. fBodyAccMeanX
42. fBodyAccMeanY
43. fBodyAccMeanZ
44. fBodyAccStdX
45. fBodyAccStdY
46. fBodyAccStdZ
47. fBodyAccJerkMeanX
48. fBodyAccJerkMeanY
49. fBodyAccJerkMeanZ
50. fBodyAccJerkStdX
51. fBodyAccJerkStdY
52. fBodyAccJerkStdZ
53. fBodyAccJerkMeanFreqX
54. fBodyAccJerkMeanFreqY
55. fBodyAccJerkMeanFreqZ
56. fBodyGyroMeanX
57. fBodyGyroMeanY
58. fBodyGyroMeanZ
59. fBodyGyroStdX
60. fBodyGyroStdY
61. fBodyGyroStdZ
62. fBodyGyroMeanFreqX
63. fBodyGyroMeanFreqY
64. fBodyGyroMeanFreqZ
65. fBodyAccMagMean
66. fBodyAccMagStd
67. fBodyBodyGyroMagMean
68. fBodyBodyGyroMagStd
69. fBodyBodyGyroMagMeanFreq
70. fBodyBodyGyroJerkMagMean
71. fBodyBodyGyroJerkMagStd
72. angleXGravityMean
73. angleYGravityMean
74. angleZGravityMean