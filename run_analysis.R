# Coursera Data Cleaning Final Project (Version 2)
# Doug Joubert

# 1.	Merges the training and the test sets to create one data set.
library(tidyverse) # activate the tidyverse

# I had to go to the orginial webpage to get all of the data, which was very confusing

# Create all the data frames
features <- read.table("data/UCI HAR Dataset/features.txt", col.names = c("n","functions"))
activities <- read.table("data/UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))
subject_test <- read.table("data/UCI HAR Dataset/test/subject_id_test.txt", col.names = "subject")
x_test <- read.table("data/UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
y_test <- read.table("data/UCI HAR Dataset/test/y_test.txt", col.names = "code")
subject_train <- read.table("data/UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_train <- read.table("data/UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
y_train <- read.table("data/UCI HAR Dataset/train/y_train.txt", col.names = "code")

# Merge all of the dataset together

Xdata <- rbind(x_train, x_test)
Ydata <- rbind(y_train, y_test)
SubjectData <- rbind(subject_train, subject_test)
MergedData <- cbind(SubjectData, Ydata, Xdata)

# Make the data tidy (long) using gather()

CompleteDataTidy <- MergedData %>% 
  gather(key = Funtion, value = Value, -subject, -code)

# Extracts only the measurements on the mean and standard deviation for each measurement.

CompleteDataTidyMean <- CompleteDataTidy %>%
  mutate(meanCompleteData = mean(Value), sdCompleteData = sd(Value)) %>% 
  select(subject, code, meanCompleteData, sdCompleteData)
  
# Uses descriptive activity names to name the activities in the data set.

CompleteDataTidyMean$code <- activities[CompleteDataTidyMean$code, 2]

# Appropriately labels the data set with descriptive variable names

# I am not sure that I have to do this because of the way that I used gather()

# Creates a second, independent tidy data set with the average of each variable for each activity and each subject.


FinalData <- CompleteDataTidyMean %>% 
  group_by(subject, code) %>% exit
  select(-sdCompleteData)
<<<<<<< HEAD:run_analysis.R

# Write out the final version of the file

# write_csv(FinalData, "data_output/FinalData.csv")
=======
>>>>>>> parent of 4cb6d2d... Final version of my script:run_analysisl.R
