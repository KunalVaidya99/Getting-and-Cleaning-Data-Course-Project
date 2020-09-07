# Getting-and-Cleaning-Data-Course-Project
Course Project relating to the course Getting and Cleaning Data offered by Johns Hopkins University on Coursera

There is only one script runAnalysis.R it contains two functions **cleanData()** and **createDataset()**

## cleanData() : 
This function does the following work:
               
* Loads all the data into dataframes.
               * Merges the training set and testing set to create one complete dataset and also binds the activity labels and subject_id.
               * Extracts only the mean and standard deviation variables of the dataset
               * Renames variables in dataset to better decsriptive names 
               * Returns the cleaned data
## createDataset() : 
This function does the following work:
* Splits the dataset(R dataframe) returned by cleanData() according to different subjects(person on whom data was collected).
* Takes mean of all variables for each activity and each subject.
* Creates a new dataframe containing all the calculated measurements in above step.
* Adds a column giving the Description of the activity.
 * writes this dataframe to a csvfile to create a tidy dataset.
               
