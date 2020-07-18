Transforming the Human Activity Recognition Using Smartphones Dataset into Tidy Data - Codebook
=================================================================

The Data:
-----------------------------------------------------------------

The files in this repository tranform the Human Activity Recognition Using Smartphones Dataset into tidy data, summarizing only the mean and standard deviation of each measurement.

The authors of the original dataset, Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, and Luca Oneto, provide the following description of the data:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The following steps were taken to clean the data:
-----------------------------------------------------------------

1. Subject IDs and activity IDs for the training data were added to the 'train' data usign cbind().
2. Subject IDs and activity IDs for the testing data were added to the 'test' data usign cbind().
3. Training and testing data were merged into a new data frame, 'all', using rbind().
4. Variable names for 'all' were renamed using 'features' data.
5. Variables in 'all' were filtered using select() to include only those containing 'mean()' or 'std()' in the variable name. Mean frequencies ('meanFreq()') and angle() variable mean measures ('gravityMean', 'tBodyAccMean','tBodyAccJerkMean', 'tBodyGyroMean', and 'tBodyGyroJerkMean') were not included.
6. Activity names corresponding to activity IDs were added as a new column using left_join().
7. An independent tidy data set summarizing the mean of each measurement by subject and activity name was created using summarise().
8. Independent tidy data set was written into a new file, 'averages.csv'.

Variables in averages.csv:
-----------------------------------------------------------------

- 'subject': Numeric ID for 30 research subjects.
- 'activity_name': Character label for 6 activity types.
- 'tBodyAcc-std()-X': Numeric measure of standard deviation of body acceleration signal along X axis.
- 'tBodyAcc-std()-Y': Numeric measure of standard deviation of body acceleration signal along Y axis.
- 'tBodyAcc-std()-Z': Numeric measure of standard deviation of body acceleration signal along Z axis.
- 'tGravityAcc-std()-X': Numeric measure of standard deviation of gravity acceleration signal along X axis.
- 'tGravityAcc-std()-Y': Numeric measure of standard deviation of gravity acceleration signal along Y axis.
- 'tGravityAcc-std()-Z': Numeric measure of standard deviation of gravity acceleration signal along Z axis.
- 'tBodyAccJerk-std()-X': Numeric measure of standard deviation of body linear acceleration derived in time to obtain Jerk signal along X axis.
- 'tBodyAccJerk-std()-Y': Numeric measure of standard deviation of body linear acceleration derived in time to obtain Jerk signal along Y axis.
- 'tBodyAccJerk-std()-Z': Numeric measure of standard deviation of body linear acceleration derived in time to obtain Jerk signal along Z axis.
- 'tBodyGyro-std()-X': Numeric measure of standard deviation of body gyroscope signal along X axis.
- 'tBodyGyro-std()-Y': Numeric measure of standard deviation of body gyroscope signal along Y axis.
- 'tBodyGyro-std()-Z': Numeric measure of standard deviation of body gyroscope signal along Z axis.
- 'tBodyGyroJerk-std()-X': Numeric measure of standard deviation of angular velocity derived in time to obtain Jerk signal along X axis.
- 'tBodyGyroJerk-std()-Y': Numeric measure of standard deviation of angular velocity derived in time to obtain Jerk signal along Y axis.
- 'tBodyGyroJerk-std()-Z': Numeric measure of standard deviation of angular velocity derived in time to obtain Jerk signal along Z axis.
- 'tBodyAccMag-std()': Numeric measure of standard deviation of magnitude of body acceleration signal.
- 'tGravityAccMag-std()': Numeric measure of standard deviation of magnitude of gravity acceleration signal.
- 'tBodyAccJerkMag-std()': Numeric measure of standard deviation of magnitude of body linear acceleration signal derived in time to obtain Jerk signal.
- 'tBodyGyroMag-std()': Numeric measure of standard deviation of magnitude of body gyroscope signal.
- 'tBodyGyroJerkMag-std()': Numeric measure of standard deviation of magnitude of angular velocity derived in time to obtain Jerk signal.
- 'fBodyAcc-std()-X': Numeric measure of standard deviation of Fast Fourier Transform of body acceleration signal along X axis.
- 'fBodyAcc-std()-Y': Numeric measure of standard deviation of Fast Fourier Transform of body acceleration signal along Y axis.
- 'fBodyAcc-std()-Z': Numeric measure of standard deviation of Fast Fourier Transform of body acceleration signal along Z axis.
- 'fBodyAccJerk-std()-X': Numeric measure of standard deviation of Fast Fourier Transform of body linear acceleration derived in time to obtain Jerk signal along X axis.
- 'fBodyAccJerk-std()-Y': Numeric measure of standard deviation of Fast Fourier Transform of body linear acceleration derived in time to obtain Jerk signal along Y axis.
- 'fBodyAccJerk-std()-Z': Numeric measure of standard deviation of Fast Fourier Transform of body linear acceleration derived in time to obtain Jerk signal along Z axis.
- 'fBodyGyro-std()-X': Numeric measure of standard deviation of Fast Fourier Transform of body gyroscope signal along X axis.
- 'fBodyGyro-std()-Y': Numeric measure of standard deviation of Fast Fourier Transform of body gyroscope signal along Y axis.
- 'fBodyGyro-std()-Z': Numeric measure of standard deviation of Fast Fourier Transform of body gyroscope signal along Z axis.
- 'fBodyAccMag-std()': Numeric measure of standard deviation of Fast Fourier Transform of magnitude of body acceleration signal.
- 'fBodyBodyAccJerkMag-std()': Numeric measure of standard deviation of Fast Fourier Transform of magnitude of body linear acceleration signal derived in time to obtain Jerk signal.
- 'fBodyBodyGyroMag-std()': Numeric measure of standard deviation of Fast Fourier Transform of magnitude of body gyroscope signal.
- 'fBodyBodyGyroJerkMag-std()': Numeric measure of standard deviation of Fast Fourier Transform of magnitude of angular velocity derived in time to obtain Jerk signal.
- 'tBodyAcc-mean()-X': Numeric measure of mean of body acceleration signal along X axis.
- 'tBodyAcc-mean()-Y': Numeric measure of mean of body acceleration signal along Y axis.
- 'tBodyAcc-mean()-Z': Numeric measure of mean of body acceleration signal along Z axis.
- 'tGravityAcc-mean()-X': Numeric measure of mean of gravity acceleration signal along X axis.
- 'tGravityAcc-mean()-Y': Numeric measure of mean of gravity acceleration signal along Y axis.
- 'tGravityAcc-mean()-Z': Numeric measure of mean of gravity acceleration signal along Z axis.
- 'tBodyAccJerk-mean()-X': Numeric measure of mean of body linear acceleration derived in time to obtain Jerk signal along X axis.
- 'tBodyAccJerk-mean()-Y': Numeric measure of mean of body linear acceleration derived in time to obtain Jerk signal along Y axis.
- 'tBodyAccJerk-mean()-Z': Numeric measure of mean of body linear acceleration derived in time to obtain Jerk signal along Z axis.
- 'tBodyGyro-mean()-X': Numeric measure of mean of body gyroscope signal along X axis.
- 'tBodyGyro-mean()-Y': Numeric measure of mean of body gyroscope signal along Y axis.
- 'tBodyGyro-mean()-Z': Numeric measure of mean of body gyroscope signal along Z axis.
- 'tBodyGyroJerk-mean()-X': Numeric measure of mean of angular velocity derived in time to obtain Jerk signal along X axis.
- 'tBodyGyroJerk-mean()-Y': Numeric measure of mean of angular velocity derived in time to obtain Jerk signal along Y axis.
- 'tBodyGyroJerk-mean()-Z': Numeric measure of mean of angular velocity derived in time to obtain Jerk signal along Z axis.
- 'tBodyAccMag-mean()': Numeric measure of mean of magnitude of body acceleration signal. 
- 'tGravityAccMag-mean()': Numeric measure of mean of magnitude of gravity acceleration signal.
- 'tBodyAccJerkMag-mean()': Numeric measure of mean of magnitude of body linear acceleration signal derived in time to obtain Jerk signal.
- 'tBodyGyroMag-mean()': Numeric measure of mean of magnitude of body gyroscope signal.
- 'tBodyGyroJerkMag-mean()': Numeric measure of mean of magnitude of angular velocity derived in time to obtain Jerk signal.
- 'fBodyAcc-mean()-X': Numeric measure of mean of Fast Fourier Transform of body acceleration signal along X axis.
- 'fBodyAcc-mean()-Y': Numeric measure of mean of Fast Fourier Transform of body acceleration signal along Y axis.
- 'fBodyAcc-mean()-Z': Numeric measure of mean of Fast Fourier Transform of body acceleration signal along Z axis.
- 'fBodyAccJerk-mean()-X': Numeric measure of mean of Fast Fourier Transform of body linear acceleration derived in time to obtain Jerk signal along X axis.
- 'fBodyAccJerk-mean()-Y': Numeric measure of mean of Fast Fourier Transform of body linear acceleration derived in time to obtain Jerk signal along Y axis.
- 'fBodyAccJerk-mean()-Z': Numeric measure of mean of Fast Fourier Transform of body linear acceleration derived in time to obtain Jerk signal along Z axis.
- 'fBodyGyro-mean()-X': Numeric measure of mean of Fast Fourier Transform of body gyroscope signal along X axis.
- 'fBodyGyro-mean()-Y': Numeric measure of mean of Fast Fourier Transform of body gyroscope signal along Y axis.
- 'fBodyGyro-mean()-Z': Numeric measure of mean of Fast Fourier Transform of body gyroscope signal along Z axis.
- 'fBodyAccMag-mean()': Numeric measure of mean of Fast Fourier Transform of magnitude of body acceleration signal.
- 'fBodyBodyAccJerkMag-mean()': Numeric measure of mean of Fast Fourier Transform of magnitude of body linear acceleration signal derived in time to obtain Jerk signal.
- 'fBodyBodyGyroMag-mean()': Numeric measure of mean of Fast Fourier Transform of magnitude of body gyroscope signal.
- 'BodyBodyGyroJerkMag-mean()': Numeric measure of mean of Fast Fourier Transform of magnitude of angular velocity derived in time to obtain Jerk signal.
