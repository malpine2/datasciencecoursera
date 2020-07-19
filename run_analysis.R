require(readr)
require(dplyr)

## Reads the raw txt data into R data frames
features <- read_delim("./UCI HAR Dataset/features.txt",
                       col_names = FALSE, 
                       delim = " ") 
actnames <- read_delim("./UCI HAR Dataset/activity_labels.txt", 
                       col_names = c("activity", "activity_name"),
                       delim = " ")
xtest <- read_delim("./UCI HAR Dataset/test/X_test.txt",
                    col_names = FALSE,
                    delim = " ",
                    col_types = cols(.default = col_number()))
xtrain <- read_delim("./UCI HAR Dataset/train/X_train.txt",
                     col_names = FALSE,
                     delim = " ",
                     col_types = cols(.default = col_number()))
ytest <- read_delim("./UCI HAR Dataset/test/y_test.txt", 
                    col_names = "activity", ## Names variable, 'activity' 
                    delim = " ")
ytrain <- read_delim("./UCI HAR Dataset/train/y_train.txt", 
                    col_names = "activity", ## Names variable, 'activity' 
                    delim = " ")
testsubjects <- read_delim("./UCI HAR Dataset/test/subject_test.txt", 
                           col_names = "subject", ## Names variable, 'subject' 
                           delim = " ")
trainsubjects <- read_delim("./UCI HAR Dataset/train/subject_train.txt", 
                            col_names = "subject", ## Names variable, 'subject' 
                            delim = " ")

## Adds subject IDs and activity IDs to train and test data as new columns
train <- cbind(trainsubjects, ytrain, xtrain)
test <- cbind(testsubjects, ytest, xtest)

## Combines test and train data into new data frame
all <- rbind(test, train)

## Renames variables of 'all' data frame using 'features' data
names(all) <- c("subject", "activity", features$X2) 

## Selects from 'all' data frame only those variables that measure
## mean() and std(), plus subject ID and activity ID
all <- all %>% 
        select(subject,
               activity,
               contains(c("std()","mean()"),
                        ignore.case = FALSE)) %>%

## Brings in all rows from 'actnames' data and matches by 'activity'
## Activty names are added as a new column
         left_join(actnames)

## Creates a new data frame, 'averages', that summarizes mean of each
## variable in 'all' (except subject ID and variable ID), 
## grouped by subject ID and activity name
averages <- all %>%
        group_by(subject, activity_name) %>%
        summarise(across(contains(c("std()","mean()")), mean))

## Writes 'averages' data frame to a new .txt file
write.table(averages, file = "averages.txt", row.names = FALSE)
                        