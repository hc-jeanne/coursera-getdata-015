# coursera-getdata-015
##Getting and Cleaning Data Course Project
To prepare tidy data that can be used for later analysis.

Source Data :
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Tidy data & Analysis :

To create one R script called run_analysis.R that does the following. 

1.  Merges the training and the test sets to create one data set.
2.  Extracts only the measurements on the mean and standard deviation for each measurement.
3.  Uses descriptive activity names to name the activities in the data set
4.  Appropriately labels the data set with descriptive variable names.
5.   From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

**How my script run_analysis.R work :**

	- read.table : to load text files
	- rbind : to merge training and test data sets
	- grepl : to check string pattern (for features extraction)
	- join (lib plyr) : to connect y data set with activity_labels
	- cbind : to merge subject and activity (y) data sets to X data set
	- colnames : to labels the data set
	- aggregate : to calculate the average of each variable, 
	              group by subject and activity



Directory and files structure:

unzip the source data to the [work directory] :

- [work directory]/run_analysis.R
- [work directory]/UCI HAR Dataset/


Run the script :

    > source("run_analysis.R") # the final data set assign to x5
    > x5[1:5, 1:5] # it's long and wide

