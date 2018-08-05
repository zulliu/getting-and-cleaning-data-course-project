## Getting and Cleaning Data Course Project ##

# Loading and Unzipping dataset
  if(!file.exists("data"))
    {dir.create("data")}
  fileUrl <-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl,destfile="/data/Dataset.zip")
  unzip(zipfile = "data/Dataset.zip",exdir = "/data")

# Reading training data
  FeaturesTrain <- read.table("/data/UCI HAR Dataset/train/X_train.txt")
  ActivityTrain <- read.table("/data/UCI HAR Dataset/train/y_train.txt")
  SubjectTrain <- read.table("/data/UCI HAR Dataset/train/subject_train.txt")

# Reading testing data
  FeaturesTest<- read.table("/data/UCI HAR Dataset/test/X_test.txt")
  ActivityTest <- read.table("/data/UCI HAR Dataset/test/y_test.txt")
  SubjectTest <- read.table("/data/UCI HAR Dataset/test/subject_test.txt")

# Reading feature and labels
  DataFeaturesNames <- read.table('/data/UCI HAR Dataset/features.txt')
  ActivityLabels = read.table('/data/UCI HAR Dataset/activity_labels.txt')
  
# Merging data
  dataSubject <- rbind(SubjectTrain, SubjectTest)
  dataActivity<- rbind(ActivityTrain, ActivityTest)
  dataFeatures<- rbind(FeaturesTrain, FeaturesTest)
  
# Assigning column names  
  names(dataSubject)<-c("Subject")
  names(dataActivity)<- c("Activity")
  names(dataFeatures)<- DataFeaturesNames[,2]
   
  dataCombine <- cbind(dataSubject, dataActivity)
  Data <- cbind(dataFeatures, dataCombine)
  
# Extracting the measurements on the mean and standard deviation
  subDataFeaturesNames<-DataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", DataFeaturesNames$V2)]

# Naming the activities in the data set
  selectedNames<-c(as.character(subDataFeaturesNames), "Subject", "Activity" )
  Data<-subset(Data,select=selectedNames)

  Data$activity<-factor(Data$Activity,labels=ActivityLabels[,2])

  
# Labeling the data set with descriptive variable names.
  names(Data)<-gsub("^t", "time", names(Data))
  names(Data)<-gsub("^f", "frequency", names(Data))
  names(Data)<-gsub("Acc", "Accelerometer", names(Data))
  names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
  names(Data)<-gsub("Mag", "Magnitude", names(Data))
  names(Data)<-gsub("BodyBody", "Body", names(Data))
  names(Data)<-gsub("Freq", "Frequency", names(Data))
  names(Data)<-gsub("mean", "Mean", names(Data)) 
  names(Data)<-gsub("std", "STD", names(Data))
 
# Creating a independent tidy data set
  
  TidySet<-aggregate(. ~Subject + Activity, Data, mean)
  TidySet<-TidySet[order(TidySet$Subject,TidySet$Activity),]
  write.table(TidySet, file = "tidydataset.txt",row.name=FALSE,quote = FALSE, sep = '\t')
  