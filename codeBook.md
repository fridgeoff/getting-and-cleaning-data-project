# Code Book

This code book summarizes the resulting data fields in `tidyData.txt` and how to acquire the raw data.

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