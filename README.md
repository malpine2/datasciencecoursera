Transforming the Human Activity Recognition Using Smartphones Dataset into Tidy Data
=================================================================

The files in this repository tranform the Human Activity Recognition Using Smartphones Dataset into tidy data. The run_analysis.R script reads in the 'test' and 'train' data from the original dataset, assigns these data descriptive variable names defined in the original dataset, assigns appropriate subject and activity labels from the original dataset, and combines the data into a single data frame. The script then selects only the variables that provide the mean and standard deviation of each measurement, creates a new tidy dataset that summarizes the mean of each measurement grouped by subject and activity, and writes this new dataset to a new file, averages.csv.

The original data can be obtained at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. 

The repository includes the following files:
=========================================

- 'README.md'

- 'CodeBook.md': Describes the variables, the data, and  transformations performed to clean up the data.

- 'run_analysis.R': Creates tidy data set.

- 'averages.txt': Displays averages of mean and standard deviation measurements from original data set, grouped by subject and activity.

Using run_analysis.R
=========================================

- The script run_analysis.R takes as its input raw data in multiple .txt files. Its output is a single .csv file, 'averages.csv'.

- The script requires the readr and dplyr packages

- To run the script, users must have the following folders and files in their working directory:

- /UCI HAR Dataset/features.txt

- /UCI HAR Dataset/activity_labels.txt

- /UCI HAR Dataset/test/X_test.txt

- /UCI HAR Dataset/test/y_test.txt

- /UCI HAR Dataset/test/subject_test.txt

- /UCI HAR Dataset/train/X_train.txt

- /UCI HAR Dataset/train/y_train.txt

- /UCI HAR Dataset/train/subject_train.txt
