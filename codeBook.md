# Code Book

This code book contains information of the raw data, transformations performed, and the summarizing of the resulting data fields in `tidyData.txt`.


## The run_analysis.R script

1. The first action of the script is that it checks if the raw data has been downloaded and extracted into work directory. If not, the script performs said actions.
2. Loads the features and activity_labels into data frames.
3. Assigns the row number of mean and std values in features data frame to a new vector.
4. Loads the test and training data sets (of the row numbers discussed in point 3) into data frames.
5. Merges the test and training data set, using rbind.
6. Replaces the numerical value of "activities" with their descriptive character values from activity_labels.
7. Creates a function, tidy.mean, to calculate the column means of a data.frame (with exception of the first two columns).
8. Applies function in point 7, to values corresponding to each "activities" and "subjects", in order to the get the average of each value of "activities" and "subjects", and assigns it to a new data.frame, tiny.data.
9. Writes the data of the tidy.data data frame to a new file named tidyData.txt


## Identifiers

* 'activities' : The ID of the test subject
* 'subjects' : the activity that the subject was doing at the time of the measurement


## Measurements

* 'tbodyacc-mean-x'
* 'tbodyacc-mean-y'
* 'tbodyacc-mean-z'
* 'tbodyacc-std-x'
* 'tbodyacc-std-y'
* 'tbodyacc-std-z'
* 'tgravityacc-mean-x'
* 'tgravityacc-mean-y'
* 'tgravityacc-mean-z'
* 'tgravityacc-std-x'
* 'tgravityacc-std-y'
* 'tgravityacc-std-z'
* 'tbodyaccjerk-mean-x'
* 'tbodyaccjerk-mean-y'
* 'tbodyaccjerk-mean-z'
* 'tbodyaccjerk-std-x'
* 'tbodyaccjerk-std-y'
* 'tbodyaccjerk-std-z'
* 'tbodygyro-mean-x'
* 'tbodygyro-mean-y'
* 'tbodygyro-mean-z'
* 'tbodygyro-std-x'
* 'tbodygyro-std-y'
* 'tbodygyro-std-z'
* 'tbodygyrojerk-mean-x'
* 'tbodygyrojerk-mean-y'
* 'tbodygyrojerk-mean-z'
* 'tbodygyrojerk-std-x'
* 'tbodygyrojerk-std-y'
* 'tbodygyrojerk-std-z'
* 'tbodyaccmag-mean'
* 'tbodyaccmag-std'
* 'tgravityaccmag-mean'
* 'tgravityaccmag-std'
* 'tbodyaccjerkmag-mean'
* 'tbodyaccjerkmag-std'
* 'tbodygyromag-mean'
* 'tbodygyromag-std'
* 'tbodygyrojerkmag-mean'
* 'tbodygyrojerkmag-std'
* 'fbodyacc-mean-x'
* 'fbodyacc-mean-y'
* 'fbodyacc-mean-z'
* 'fbodyacc-std-x'
* 'fbodyacc-std-y'
* 'fbodyacc-std-z'
* 'fbodyacc-meanfreq-x'
* 'fbodyacc-meanfreq-y'
* 'fbodyacc-meanfreq-z'
* 'fbodyaccjerk-mean-x'
* 'fbodyaccjerk-mean-y'
* 'fbodyaccjerk-mean-z'
* 'fbodyaccjerk-std-x'
* 'fbodyaccjerk-std-y'
* 'fbodyaccjerk-std-z'
* 'fbodyaccjerk-meanfreq-x'
* 'fbodyaccjerk-meanfreq-y'
* 'fbodyaccjerk-meanfreq-z'
* 'fbodygyro-mean-x'
* 'fbodygyro-mean-y'
* 'fbodygyro-mean-z'
* 'fbodygyro-std-x'
* 'fbodygyro-std-y'
* 'fbodygyro-std-z'
* 'fbodygyro-meanfreq-x'
* 'fbodygyro-meanfreq-y'
* 'fbodygyro-meanfreq-z'
* 'fbodyaccmag-mean'
* 'fbodyaccmag-std'
* 'fbodyaccmag-meanfreq'
* 'fbodybodyaccjerkmag-mean'
* 'fbodybodyaccjerkmag-std'
* 'fbodybodyaccjerkmag-meanfreq'
* 'fbodybodygyromag-mean'
* 'fbodybodygyromag-std'
* 'fbodybodygyromag-meanfreq'
* 'fbodybodygyrojerkmag-mean'
* 'fbodybodygyrojerkmag-std'
* 'fbodybodygyrojerkmag-meanfreq'


## Activity Labels

* `WALKING` (value `1`): subject was walking during the test
* `WALKING_UPSTAIRS` (value `2`): subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down a staircase during the test
* `SITTING` (value `4`): subject was sitting during the test
* `STANDING` (value `5`): subject was standing during the test
* `LAYING` (value `6`): subject was laying down during the test

## The raw data

Can be downloaded from the following link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip