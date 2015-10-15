#############
# ReadMe.md #
#############

This repo contains the following four (4) files: 
- 'ReadMe.md'

- 'CodeBook.md'

- 'TidyDataSet.txt'

- 'run_analysis.R'

The 'run_analysis.R' script uses the dataset at the following UCI Machine Learning Repository link: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

This run_analysis.R script performs the following five steps on the Accelerometer data in order
produce the 'TidyDataSet.txt' file.

1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement. 
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names. 
5) From the data set in step 4, creates a second, independent tidy data set (TidyDataSet.txt) with the average of each 	variable for each activity and each subject.


################################
# Viewing TidyDataSet.txt in R #
################################
Please use the following code:

read.table('TidyDataSet.txt', header = T, check.names = F)






