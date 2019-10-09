Introduction
============

The run\_analysis.R script performs the data preparation and then followed by the steps outlined below.

Download the dataset
====================

1.  I downloaded the data using the following [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
2.  I created the following folders inside my project folder: (1) data, (2) data\_output, and (3) documents
3.  I extracted the data and the moved the data to the **data** folder

Created the data frames using read.table
========================================

| Name of DataFrame | Data Source        | Structure Information      |
|-------------------|--------------------|----------------------------|
| features          | features.txt       | 561 obs. of 2 variables    |
| subject\_test     | subject\_test.txt  | 2947 obs. of 1 variable    |
| x\_test           | X\_test.txt        | 2947 obs. of 561 variables |
| y\_test           | y\_test.txt        | 2947 obs. of 1 variable    |
| subject\_train    | subject\_train.txt | 7352 obs. of 1 variable    |
| x\_train          | X\_train.txt       | 7352 obs. of 561 variables |
| y\_train          | y\_train.txt       | 7352 obs. of 1 variable    |

Merge all of the dataset together
=================================

-   Xdata (10299 obs of 2 columns) is created by merging x\_train and x\_test using rbind() function
-   Ydata (10299 obs of 1 column) is created by merging y\_train and y\_test using rbind() function
-   SubjectData (10299 obs of 1 column) is created by merging subject\_train and subject\_test using rbind() function
-   MergedData (10299 obs of 563 columns) is created by merging Subject, Y and X using cbind() function

Make the data tidy (long)
=========================

-   Activated the tidyverse and used gather() to make the data into a tidy-friendly version

Extracts only the measurements on the mean and standard deviation for each measurement
======================================================================================

-   Used pipes and the TidyVerse to create the following new dataframe: CompleteDataTidyMean
-   Used mutate to create two new columns: the mean (mean), and the standard deviation (sd)
-   Used select to only include the columns I was interested in

Uses descriptive activity names to name the activities in the data set
======================================================================

-   Using \[\], I was able to replace the values in my new data frame with the corresponding activity taken from second column of the activities variable

Creates a second, independent tidy data set with the average of each variable for each activity and each subject
================================================================================================================

-   Using group\_by() and select() I was able to create a final version of the dataset

Write out the final version of the file
=======================================

-   Using write.csv I was able to save a final version of the file in the data\_output folder
