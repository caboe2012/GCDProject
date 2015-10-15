#############
# Code Book #
#############

Feature Selection - Raw Data
=============================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

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
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean


Feature Selection - Tidy Data Set
==================================

From the 66 std() and mean() variables in the train and test data sets located in the UCI Machine Learning Repositorty noted above, the average value for each was caluclated by user and by activity to create the tidy data set, TidyDataSet.txt.  The variables names outlined in the UCI repo were modified to include the prefix 'Mean-' to reflect this new average variable value for each activity and subject.  These resulting final 66 average variables are denoted below along with the two additional variables, SubjectID and activityName. For a detailed breakdown of the original variables, please see the UCI repo ReadMe and additional files by following the link in ReadMe text.

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



