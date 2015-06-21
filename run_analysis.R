## Coursera-getdata-015 : Course Project
##
## This script does the following :
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
##
## function mergeTrainTest -- to merge the train and test data

mergeTrainTest <- function(trainFile, testFile) {
  dir <- "UCI HAR Dataset/"
  dataTrain <- read.table(paste(dir, trainFile, sep="train/"))
  dataTest <- read.table(paste(dir, testFile, sep="test/"))
  data <- rbind(dataTrain, dataTest)
  data
}

## 1. Merges the training and the test sets:
x <- mergeTrainTest("X_train.txt", "X_test.txt")
y <- mergeTrainTest("y_train.txt", "y_test.txt")
subject <- mergeTrainTest("subject_train.txt", "subject_test.txt")

## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
feature <- read.table("UCI HAR Dataset/features.txt")

#-- checks if the "mean()" or "std()" or "meanFreq()" in the features:
extractLogic <- grepl("mean()", feature$V2, fixed=TRUE) | grepl("std()", feature$V2, fixed=TRUE)
# if "meanFreq()" is not include in the "mean", comments the following line:
extractLogic <- extractLogic | grepl("meanFreq()", feature$V2, fixed=TRUE)
feature2 <- feature[extractLogic,]
x2 <- x[,extractLogic]

## 3. Uses descriptive activity names to name the activities in the data set
activity <- read.table("UCI HAR Dataset/activity_labels.txt")

library(plyr)
yLabel <- join(y,activity, by="V1", type = "inner")
cNames <- c("subject", "activity", as.character(feature2[,2]))
x3 <- cbind(subject, yLabel[,2], x2)

## 4. Appropriately labels the data set with descriptive variable names. 
x4 <- x3
colnames(x4) <- cNames

## 5. From the data set in step 4, creates a second, independent tidy data set 
##    with the average of each variable for each activity and each subject.
#-- group-by subject and activity:
g <- subset(x4, select=c(subject,activity))
x4_2 <- subset(x4, select=-c(subject,activity))
x5 <- aggregate(x4_2, g, mean)
