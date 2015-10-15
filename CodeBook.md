#############
# Code Book #
#############

From the 66 std() and mean() variables in the train and test data sets located in the UCI Machine Learning Repositorty link in the ReadMe file, the average value for each was caluclated by user and by activity to create the tidy data set, TidyDataSet.txt.  The variables names outlined in the UCI repo were modified to include the prefix 'Mean-' to reflect this new average variable value for each activity and subject.  These resulting final 66 average variables are denoted below along with the two additional variables, SubjectID and activityName. For a detailed breakdown of the original variables, please see the UCI repo ReadMe and additional files by following the link in ReadMe text.

SubjectID
	- Identifies the subject who performed the activity for each window sample. 
	- Its range is from 1 to 30.

activityName
	- The name of the activity being performed by the Subject at the time of the sample

Mean-tBodyAcc-mean()-X

Mean-tBodyAcc-mean()-Y

Mean-tBodyAcc-mean()-Z

Mean-tBodyAcc-std()-X

Mean-tBodyAcc-std()-Y

Mean-tBodyAcc-std()-Z

Mean-tGravityAcc-mean()-X

Mean-tGravityAcc-mean()-Y

Mean-tGravityAcc-mean()-Z

Mean-tGravityAcc-std()-X

Mean-tGravityAcc-std()-Y

Mean-tGravityAcc-std()-Z

Mean-tBodyAccJerk-mean()-X

Mean-tBodyAccJerk-mean()-Y

Mean-tBodyAccJerk-mean()-Z

Mean-tBodyAccJerk-std()-X

Mean-tBodyAccJerk-std()-Y

Mean-tBodyAccJerk-std()-Z

Mean-tBodyGyro-mean()-X

Mean-tBodyGyro-mean()-Y

Mean-tBodyGyro-mean()-Z

Mean-tBodyGyro-std()-X

Mean-tBodyGyro-std()-Y

Mean-tBodyGyro-std()-Z

Mean-tBodyGyroJerk-mean()-X

Mean-tBodyGyroJerk-mean()-Y

Mean-tBodyGyroJerk-mean()-Z

Mean-tBodyGyroJerk-std()-X

Mean-tBodyGyroJerk-std()-Y

Mean-tBodyGyroJerk-std()-Z

Mean-tBodyAccMag-mean()

Mean-tBodyAccMag-std()

Mean-tGravityAccMag-mean()

Mean-tGravityAccMag-std()

Mean-tBodyAccJerkMag-mean()

Mean-tBodyAccJerkMag-std()

Mean-tBodyGyroMag-mean()

Mean-tBodyGyroMag-std()

Mean-tBodyGyroJerkMag-mean()

Mean-tBodyGyroJerkMag-std()

Mean-fBodyAcc-mean()-X

Mean-fBodyAcc-mean()-Y

Mean-fBodyAcc-mean()-Z

Mean-fBodyAcc-std()-X

Mean-fBodyAcc-std()-Y

Mean-fBodyAcc-std()-Z

Mean-fBodyAccJerk-mean()-X

Mean-fBodyAccJerk-mean()-Y

Mean-fBodyAccJerk-mean()-Z

Mean-fBodyAccJerk-std()-X

Mean-fBodyAccJerk-std()-Y

Mean-fBodyAccJerk-std()-Z

Mean-fBodyGyro-mean()-X

Mean-fBodyGyro-mean()-Y

Mean-fBodyGyro-mean()-Z

Mean-fBodyGyro-std()-X

Mean-fBodyGyro-std()-Y

Mean-fBodyGyro-std()-Z

Mean-fBodyAccMag-mean()

Mean-fBodyAccMag-std()

Mean-fBodyBodyAccJerkMag-mean()

Mean-fBodyBodyAccJerkMag-std()

Mean-fBodyBodyGyroMag-mean()

Mean-fBodyBodyGyroMag-std()

Mean-fBodyBodyGyroJerkMag-mean()

Mean-fBodyBodyGyroJerkMag-std()



