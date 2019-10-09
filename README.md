---
output:
  word_document: default
  pdf_document: default
  html_document: default
---

# General Information
* This repository was created as part of the Getting and Cleaning Data course project. It has the instructions on how to run analysis on Human Activity recognition dataset.
* This DATACLEANINGPROJECT readme.txt file was generated on 2019-10-09 by Douglas Joubert

## Author Information

  Creator: Douglas Joubert
  
## Title of Dataset:

### Data set information
The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. They performed a protocol of activities composed of six basic activities: three static postures (standing, sitting, lying) and three dynamic activities (walking, walking downstairs and walking upstairs). The experiment also included postural transitions that occurred between the static postures. These are: stand-to-sit, sit-to-stand, sit-to-lie, lie-to-sit, stand-to-lie, and lie-to-stand. All the participants were wearing a smartphone (Samsung Galaxy S II) on the waist during the experiment execution. We captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz using the embedded accelerometer and gyroscope of the device. The experiments were video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data (Anguita, 2013).

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain (Anguita, 2013).

Check the README.md for further details about this dataset.

### Date of data collection
2012-12-10, more information available from Data Set Description [file](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#).

### Attribute Information:

For each record in the dataset it is provided:
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope.
* A 561-feature vector with time and frequency domain variables.
* Its activity label.
* An identifier of the subject who carried out the experiment.

# Code style and Data used
* This project was written in *R version 3.5.1 (2018-07-02))*
* Full description of the data used and analysis performed is found in the CodeBook.md or Codebook.rmd files.

# Data and File Overview
* "bibliography.bib"
* "CodeBook.md"
* "CodeBook.Rmd"
* "data"
	+ "activity_labels.txt"
	+ "features.txt"
	+ "features_info.txt"
	+ "test"
		- "subject_test.txt"
		- "X_test.txt"
		- "y_test.txt"  
	+ "train"
		- "subject_train.txt"
		- "X_train.txt"
		- "y_train.txt" 
* "data_output"
* "DataCleaningProject.Rproj"
* "documents"
	+ "features_info.txt"
* "file_structure.txt"
* "README.md"
* "README.Rmd"
* "run_analysis.R"

# Methodological Information
* Please consult the CodeBook file for information about data transformations

# References
1. Anguita, D., Ghio, A., Oneto, L., Parra, X., & Reyes-Ortiz, J. L. (2013). Human Activity Recognition Using Smartphones Data Set. Retrieved October 4, 2019, from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#