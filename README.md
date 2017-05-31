# Getting and Cleaning Data Assignment

### Assignment Submission Files

* run_analysis.R
* README.md
* codeBook.md


### Instructions:

* 	Run the run_analysis.R script from source(). It will download and extract the zip with required files if not present in the current work directory of R.	
*	After running the script a new file can be observed (in addition to the extracted data from the zip) in the work directory, named tidyData.txt, and it will contain the calculated means and standard deviations of the sensors, of each activity for each of the 30 participants.


### The run_analysis.R script

1. The first action of the script is that it checks if the raw data has been downloaded and extracted into work directory. If not, the script performs said actions.
2. Loads the features and activity_labels into data frames.
3. Assigns the row number of mean and std values in features data frame to a new vector.
4. Loads the test and training data sets (of the row numbers discussed in point 3) into data frames.
5. Merges the test and training data set, using rbind.
6. Replaces the numerical value of "activities" with their descriptive character values from activity_labels.
7. Creates a function, tidy.mean, to calculate the column means of a data.frame (with exception of the first two columns).
8. Applies function in point 7, to values corresponding to each "activities" and "subjects", in order to the get the average of each value of "activities" and "subjects", and assigns it to a new data.frame, tiny.data.
9. Writes the data of the tidy.data data frame to a new file named tidyData.txt


### More Information

For more information on the data set, please refer to 
* codeBook for more information about tidyData.txt and run_analyse.R
* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones