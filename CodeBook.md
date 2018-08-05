# Code Book for Coursera Getting and Cleaning Data course project
This code book summarizes the the tidydataset.txt file in this repository.

# Source data
The data were collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Identifiers
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

# The tidydataset.txt is composed by the following observation and variables:

Subject	Activity	timeBodyAccelerometer-Mean()-X	timeBodyAccelerometer-Mean()-Y	timeBodyAccelerometer-Mean()-Z	timeBodyAccelerometer-STD()-X	timeBodyAccelerometer-STD()-Y	timeBodyAccelerometer-STD()-Z	timeGravityAccelerometer-Mean()-X	timeGravityAccelerometer-Mean()-Y	timeGravityAccelerometer-Mean()-Z	timeGravityAccelerometer-STD()-X	timeGravityAccelerometer-STD()-Y	timeGravityAccelerometer-STD()-Z	timeBodyAccelerometerJerk-Mean()-X	timeBodyAccelerometerJerk-Mean()-Y	timeBodyAccelerometerJerk-Mean()-Z	timeBodyAccelerometerJerk-STD()-X	timeBodyAccelerometerJerk-STD()-Y	timeBodyAccelerometerJerk-STD()-Z	timeBodyGyroscope-Mean()-X	timeBodyGyroscope-Mean()-Y	timeBodyGyroscope-Mean()-Z	timeBodyGyroscope-STD()-X	timeBodyGyroscope-STD()-Y	timeBodyGyroscope-STD()-Z	timeBodyGyroscopeJerk-Mean()-X	timeBodyGyroscopeJerk-Mean()-Y	timeBodyGyroscopeJerk-Mean()-Z	timeBodyGyroscopeJerk-STD()-X	timeBodyGyroscopeJerk-STD()-Y	timeBodyGyroscopeJerk-STD()-Z	timeBodyAccelerometerMagnitude-Mean()	timeBodyAccelerometerMagnitude-STD()	timeGravityAccelerometerMagnitude-Mean()	timeGravityAccelerometerMagnitude-STD()	timeBodyAccelerometerJerkMagnitude-Mean()	timeBodyAccelerometerJerkMagnitude-STD()	timeBodyGyroscopeMagnitude-Mean()	timeBodyGyroscopeMagnitude-STD()	timeBodyGyroscopeJerkMagnitude-Mean()	timeBodyGyroscopeJerkMagnitude-STD()	frequencyBodyAccelerometer-Mean()-X	frequencyBodyAccelerometer-Mean()-Y	frequencyBodyAccelerometer-Mean()-Z	frequencyBodyAccelerometer-STD()-X	frequencyBodyAccelerometer-STD()-Y	frequencyBodyAccelerometer-STD()-Z	frequencyBodyAccelerometerJerk-Mean()-X	frequencyBodyAccelerometerJerk-Mean()-Y	frequencyBodyAccelerometerJerk-Mean()-Z	frequencyBodyAccelerometerJerk-STD()-X	frequencyBodyAccelerometerJerk-STD()-Y	frequencyBodyAccelerometerJerk-STD()-Z	frequencyBodyGyroscope-Mean()-X	frequencyBodyGyroscope-Mean()-Y	frequencyBodyGyroscope-Mean()-Z	frequencyBodyGyroscope-STD()-X	frequencyBodyGyroscope-STD()-Y	frequencyBodyGyroscope-STD()-Z	frequencyBodyAccelerometerMagnitude-Mean()	frequencyBodyAccelerometerMagnitude-STD()	frequencyBodyAccelerometerJerkMagnitude-Mean()	frequencyBodyAccelerometerJerkMagnitude-STD()	frequencyBodyGyroscopeMagnitude-Mean()	frequencyBodyGyroscopeMagnitude-STD()	frequencyBodyGyroscopeJerkMagnitude-Mean()	frequencyBodyGyroscopeJerkMagnitude-STD()	
