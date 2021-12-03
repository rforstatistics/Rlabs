# Lab 5

In this repository is R script that generate a CSV file 'tidy_dataset.csv'. The raw data for this is the data from University of California Irvine (UCI) "Human Activity Recognition Using Smartphones Data Set".The data contain recordings for a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. More information by link:

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]

## R script 

Script run_analysis.R:

* read the datasets
* get data labels
* merge train and test datasets
* take only mean and standard deviation variables
* assigns descriptive names to variables in the dataset
* output tidy dataset

Dataset link: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]

