
## TIDY DATA SET EXTRACTED FROM THE ORIGINAL HUMAN ACTIVITY RECOGNITION USING SMARTPHONES DATASET
## CodeBook

### This data set was created based on the original Human Activity Recognition Using Smartphones Dataset. Please, refer to *http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones* for the full data set
 

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

Below you will find the list of all the extracted variables and their brief description (the numbering corresponds to column numbers in the new tidy data set). For more details, please refer to  ***features.txt*** and ***features_info.txt*** files.

1. **SubjectID**        - Subject identification from 1 to 30

2. **ActivityName	**	- Full name of activity (e.g. WALKING)

3. **tBodyAccMeanX**	- Body acceleration mean X axis (time signal)

4. **tBodyAccMeanY**	- Body acceleration mean Y axis (time signal)

5. **tBodyAccMeanZ**	- Body acceleration mean Z axis (time signal)

6. **tBodyAccStdX**		- Body acceleration standard deviation X axis (time domain signal)

7. **tBodyAccStdY**		- Body acceleration standard deviation Y axis (time domain signal)

8. **tBodyAccStdZ**		- Body acceleration standard deviation Z axis (time domain signal)

9. **tGravityAccMeanX**		- Gravity acceleration mean X axis (time domain signal)

10. **tGravityAccMeanY**	- Gravity acceleration mean Y axis (time domain signal)

11. **tGravityAccMeanZ**	- Gravity acceleration mean Z axis (time domain signal)

12. **tGravityAccStdX**		- Gravity acceleration standard deviation X axis (time domain signal)

13. **tGravityAccStdY**		- Gravity acceleration standard deviation Y axis (time domain signal)

14. **tGravityAccStdZ**		- Gravity acceleration standard deviation Z axis (time domain signal)

15. **tBodyAccJerkMeanX**	- Body acceleration jerk mean X axis (time domain signal)

16. **tBodyAccJerkMeanY**	- Body acceleration jerk mean Y axis (time domain signal)

17. **tBodyAccJerkMeanZ**	- Body acceleration jerk mean Z axis (time domain signal)

18. **tBodyAccJerkStdX**	- Body acceleration jerk standard deviation X axis (time domain signal)

19. **tBodyAccJerkStdY**	- Body acceleration jerk standard deviation Y axis (time domain signal)

20. **tBodyAccJerkStdZ**	- Body acceleration jerk standard deviation Z axis (time domain signal)

21. **tBodyGyroMeanX**	- Body gyroscope mean X axis 	(time domain signal)

22. **tBodyGyroMeanY**	- Body gyroscope mean Y axis 	(time domain signal)

23. **tBodyGyroMeanZ**	- Body gyroscope mean Z axis 	(time domain signal)

24. **tBodyGyroStdX**	- Body gyroscope standard deviation X axis (time domain signal)

25. **tBodyGyroStdY**	- Body gyroscope standard deviation Y axis (time domain signal)

26. **tBodyGyroStdZ**	- Body gyroscope standard deviation Z axis (time domain signal)

27. **tBodyGyroJerkMeanX**		- Body gyroscope jerk mean X axis (time domain signal)

28. **tBodyGyroJerkMeanY**		- Body gyroscope jerk mean Y axis (time domain signal)

29. **tBodyGyroJerkMeanZ**		- Body gyroscope jerk mean Z axis (time domain signal)

30. **tBodyGyroJerkStdX**		- Body gyroscope jerk standard deviation X axis (time domain signal)

31. **tBodyGyroJerkStdY**		- Body gyroscope jerk standard deviation Y axis (time domain signal)		

32. **tBodyGyroJerkStdZ**		- Body gyroscope jerk standard deviation Z axis (time domain signal)

33. **tBodyAccMagMean** - Body acceleration magnitude mean (time domain signal) 

34. **tBodyAccMagStd**	- Body acceleration magnitude standard deviation (time domain signal) 

35. **tBodyAccJerkMagMean**		- Body acceleration  jerk magnitude mean (time domain signal)

36. **tBodyAccJerkMagStd**		- Body acceleration  jerk magnitude standard deviation (time domain signal)

37. **tBodyGyroMagMean**	- Body gyroscope magnitude mean (time domain signal)

38. **tBodyGyroMagStd**		- Body gyroscope magnitude standard deviation (time domain signal)	

39. **tBodyGyroJerkMagMean**	- Body gyroscope jerk magnitude mean (time domain signal)  

40. **tBodyGyroJerkMagStd**		- Body gyroscope jerk magnitude standard deviation (time domain signal)		

41. **fBodyAccMeanX**		- Body acceleration mean X axis (frequency domain signal)		

42. **fBodyAccMeanY**		- Body acceleration mean Y axis (frequency domain signal)

43. **fBodyAccMeanZ**		- Body acceleration mean Z axis (frequency domain signal)

44. **fBodyAccStdX**		- Body acceleration standard deviation X axis (frequency domain signal)

45. **fBodyAccStdY**		- Body acceleration standard deviation Y axis (frequency domain signal)

46. **fBodyAccStdZ**		- Body acceleration standard deviation Z axis (frequency domain signal)

47. **fBodyAccJerkMeanX**	- Fody acceleration jerk mean X axis (frequency domain signal)

48. **fBodyAccJerkMeanY**	- Body acceleration jerk mean Y axis (frequency domain signal)

49. **fBodyAccJerkMeanZ**	- Body acceleration jerk mean Z axis (frequency domain signal)

50. **fBodyAccJerkStdX**	- Body acceleration jerk standard deviation X axis (frequency domain signal)

51. **fBodyAccJerkStdY**	- Body acceleration jerk standard deviation Y axis (frequency domain signal)

52. **fBodyAccJerkStdZ**	- Body acceleration jerk standard deviation Z axis (frequency domain signal)


53. **fBodyAccJerkMeanFreqX** 	- Body acceleration jerk mean frequency X axis (frequency domain signal)


54. **fBodyAccJerkMeanFreqY**	- Body acceleration jerk mean frequency Y axis (frequency domain signal)


55. **fBodyAccJerkMeanFreqZ**	- Body acceleration jerk mean frequency Z axis (frequency domain signal)


56. **fBodyGyroMeanX**		- Body gyroscope mean X axis (frequency domain signal)

57. **fBodyGyroMeanY**		- Body gyroscope mean Y axis (frequency domain signal)

58. **fBodyGyroMeanZ**		- Body gyroscope mean Z axis (frequency domain signal)

59. **fBodyGyroStdX**		- Body gyroscope standard deviation X axis (frequency domain signal)

60. **fBodyGyroStdY**		- Body gyroscope standard deviation Y axis (frequency domain signal)

61. **fBodyGyroStdZ**		- Body gyroscope standard deviation Z axis (frequency domain signal)

62. **fBodyGyroMeanFreqX**	- Body gyroscope mean frequency X axis (frequency domain signal)

63. **fBodyGyroMeanFreqY**	- Body gyroscope mean frequency Y axis (frequency domain signal)


64. **fBodyGyroMeanFreqZ**	- Body gyroscope mean frequency Z axis (frequency domain signal)


65. **fBodyAccMagMean**		- Body acceleration magnitude mean (frequency domain signal)


66. **fBodyAccMagStd**	- Body acceleration magnitude standard deviation (frequency domain signal)

67. **fBodyBodyGyroMagMean**	- Body body gyroscope magnitude mean (frequency domain signal)

68. **fBodyBodyGyroMagStd**		- Body body gyroscope magnitude standard deviation (frequency domain signal)


69. **fBodyBodyGyroMagMeanFreq**	- Body body gyroscope magnitude mean frequency (frequency domain signal)

70. **fBodyBodyGyroJerkMagMean**	- Body body gyroscope jerk magnitude mean (frequency domain signal)

71. **fBodyBodyGyroJerkMagStd**		- Body body gyroscope jerk magnitude standard deviation (frequency domain signal)

72. **angleXGravityMean**	- Angle X axis gravity mean

73. **angleYGravityMean**	- Angle Y axis gravity mean

74. **angleZGravityMean**	- Angle Z axis gravity mean
