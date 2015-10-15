#######################################
# Getting and Cleaning Data - Project #
#######################################
library(plyr)
library(dplyr)
library(data.table)

# Load and Merge the TEST data and labels into R objects
test.data <- read.table('./test/X_test.txt', header = F)
test.labels <- read.table('./test/y_test.txt', header = F)
test.subjects <- read.table('./test/subject_test.txt', header = F)

# Load and Merge the TRAIN data and labels into R objects
train.data <- read.table('./train/X_train.txt', header= F)
train.labels <- read.table('./train/y_train.txt', header = F)
train.subjects <- read.table('./train/subject_train.txt', header = F)

# Load the activity labels for both Train and Test data sets
activityLabels <- read.table('activity_labels.txt', header = F)

# Load the Column Names into an R object
# Set row.names = NULL in order to avoid the row numbering in the same column as the feature name
# Setting row.names = NULL creates a second vector that can just be removed
col.names <- read.table('./features.txt', header = F, row.names = NULL)
col.names <- col.names[,2] #remove the feature column 1
col.names <- as.character(col.names) # convert from Factor to Character

# Give the feature variables descriptive names in all the data sets
names(test.data)  <- col.names
names(test.labels) <- 'Activity'
names(test.subjects) <- 'SubjectID'
names(train.data) <- col.names
names(train.labels) <-  'Activity'
names(train.subjects) <- 'SubjectID'
names(activityLabels) <- c('Activity', 'activityName')

# Get the col numbers for only the mean and std dev measurements
# And combine these two vectors into a single, sorted vector
mean.cols <- grep('-mean\\()', col.names)
std.cols <- grep('.std', col.names)
mean.std.cols <- sort(c(std.cols, mean.cols))

# Create new data frame with only MEAN and STD features from the DATA files
rel.test.data <- test.data[,mean.std.cols]
rel.train.data <- train.data[,mean.std.cols]

# Merge the Test and Train Label and Subject DFs to the respective data sets
rel.test.data <- cbind(test.subjects, rel.test.data, test.labels)
rel.train.data <- cbind(train.subjects, rel.train.data, train.labels)

# Merge the Test and Train data sets into a single Dataframe
merged.data.sets <- rbind(rel.train.data,rel.test.data)

# Replace integer id for Activity with descirptive name from activity_labels.txt
# using plyr join function to add Descriptive Activity Names
final.merged.set <- join(merged.data.sets, activityLabels, by = 'Activity') 

# Create a second independent, tidy data set with the average of each variable 
# for each activity and each subject, ordered on SubjectID
final.set <- data.table(final.merged.set)
final.tidy.set <- final.set %>% group_by(SubjectID, activityName) %>% summarise_each(funs(mean))
final.tidy.set <- final.tidy.set[order(SubjectID, activityName)]
final.tidy.set <- final.tidy.set[,Activity:=NULL]
final.names <- paste('Mean-', names(final.tidy.set)[3:68], sep = '')
final.names <- c(names(final.tidy.set)[1:2], final.names)
setnames(final.tidy.set, names(final.tidy.set), final.names)
ans <- as.data.frame(final.tidy.set)
print (head(ans,20))

#write.table(ans, file ="TidyDataSet.txt", row.names = F)
#tidy_set <- read.table("TidyDataSet.txt", header = T, check.names = F)




