# DATA DICTIONARY #

subject : subjectID

	An identifier of the subject who carried out the experiment.
	1..30 : The experiments have been carried out with a group of 30 volunteers


activity : activity label

	Each person performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist.
	- WALKING
	- WALKING_UPSTAIRS
	- WALKING_DOWNSTAIRS
	- SITTING
	- LAYING


columns 3:81 : features

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

	tBodyAcc-XYZ
	tGravityAcc-XYZ
	tBodyAccJerk-XYZ
	tBodyGyro-XYZ
	tBodyGyroJerk-XYZ
	tBodyAccMag
	tGravityAccMag
	tBodyAccJerkMag
	tBodyGyroMag
	tBodyGyroJerkMag
	fBodyAcc-XYZ
	fBodyAccJerk-XYZ
	fBodyGyro-XYZ
	fBodyAccMag
	fBodyAccJerkMag
	fBodyGyroMag
	fBodyGyroJerkMag

	The set of variables that were estimated from these signals are: 

	mean(): Mean value
	std(): Standard deviation
	meanFreq(): Weighted average of the frequency components 
	            to obtain a mean frequency

[3] tBodyAcc-mean()-X               
[4] tBodyAcc-mean()-Y              
[5] tBodyAcc-mean()-Z              
[6] tBodyAcc-std()-X               
[7] tBodyAcc-std()-Y                
[8] tBodyAcc-std()-Z               
[9] tGravityAcc-mean()-X            
[10]tGravityAcc-mean()-Y           
[11]tGravityAcc-mean()-Z            
[12]tGravityAcc-std()-X            
[13] tGravityAcc-std()-Y             
[14]tGravityAcc-std()-Z            
[15] tBodyAccJerk-mean()-X           
[16]tBodyAccJerk-mean()-Y          
[17] tBodyAccJerk-mean()-Z           
[18]tBodyAccJerk-std()-X           
[19] tBodyAccJerk-std()-Y            
[20]tBodyAccJerk-std()-Z           
[21] tBodyGyro-mean()-X              
[22]tBodyGyro-mean()-Y             
[23] tBodyGyro-mean()-Z              
[24]tBodyGyro-std()-X              
[25] tBodyGyro-std()-Y               
[26]tBodyGyro-std()-Z              
[27] tBodyGyroJerk-mean()-X          
[28]tBodyGyroJerk-mean()-Y         
[29] tBodyGyroJerk-mean()-Z          
[30]tBodyGyroJerk-std()-X          
[31] tBodyGyroJerk-std()-Y           
[32]tBodyGyroJerk-std()-Z          
[33] tBodyAccMag-mean()              
[34]tBodyAccMag-std()              
[35] tGravityAccMag-mean()           
[36]tGravityAccMag-std()           
[37] tBodyAccJerkMag-mean()          
[38]tBodyAccJerkMag-std()          
[39] tBodyGyroMag-mean()             
[]tBodyGyroMag-std()             
[41] tBodyGyroJerkMag-mean()         
[]tBodyGyroJerkMag-std()         
[43] fBodyAcc-mean()-X               
[]fBodyAcc-mean()-Y              
[45] fBodyAcc-mean()-Z               
[]fBodyAcc-std()-X               
[47] fBodyAcc-std()-Y                
[]fBodyAcc-std()-Z               
[49] fBodyAcc-meanFreq()-X           
[]fBodyAcc-meanFreq()-Y          
[51] fBodyAcc-meanFreq()-Z           
[]fBodyAccJerk-mean()-X          
[53] fBodyAccJerk-mean()-Y           
[]fBodyAccJerk-mean()-Z          
[55] fBodyAccJerk-std()-X            
[]fBodyAccJerk-std()-Y           
[57] fBodyAccJerk-std()-Z            
[]fBodyAccJerk-meanFreq()-X      
[59] fBodyAccJerk-meanFreq()-Y       
[]fBodyAccJerk-meanFreq()-Z      
[61] fBodyGyro-mean()-X              
[]fBodyGyro-mean()-Y             
[63] fBodyGyro-mean()-Z              
[]fBodyGyro-std()-X              
[65] fBodyGyro-std()-Y               
[]fBodyGyro-std()-Z              
[67] fBodyGyro-meanFreq()-X          
[]fBodyGyro-meanFreq()-Y         
[69] fBodyGyro-meanFreq()-Z          
[]fBodyAccMag-mean()             
[71] fBodyAccMag-std()               
[]fBodyAccMag-meanFreq()         
[73] fBodyBodyAccJerkMag-mean()      
[]fBodyBodyAccJerkMag-std()      
[75] fBodyBodyAccJerkMag-meanFreq()  
[]fBodyBodyGyroMag-mean()        
[77] fBodyBodyGyroMag-std()          
[78]fBodyBodyGyroMag-meanFreq()    
[79] fBodyBodyGyroJerkMag-mean()     
[80]fBodyBodyGyroJerkMag-std()     
[81] fBodyBodyGyroJerkMag-meanFreq()
