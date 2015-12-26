# Clear data

This repo contain file run_analysis.R which contains code for preparation of tidy dataset from Human Activity Recognition Using Smartphones Dataset provided by Smartlab - Non Linear Complex Systems Laboratory

The dataset could be obtained from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip or
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

In order to run this script correctly the working directory should contain following files from the Data Set mentioned before

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'test/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

The script contains code which performs following operations

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

As a result script generates "long" resultset created in step 5 as 'resultset_long.txt' (Code for generating "wide" resultset also included in script)

Please refer to comments in run_analysis.R for more details on how the script works

Prease refer to CodeBook.md for description of resultset_long.txt

Enjoy!
