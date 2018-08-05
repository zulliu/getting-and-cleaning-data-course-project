# Code Book for Coursera Getting and Cleaning Data course project
This code book summarizes the the tidydataset.txt file in this repository.

# Source data
The data were collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Variables
## Identifiers
Subjest: ID of the volunteers participated in this activity, from 1 to 30.
Activity: Activity type including WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTARIS, SITTINGS, STANDING and LAYING.
x:Variable features
y:Activities correspoding to x

# Transformations
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set.
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.