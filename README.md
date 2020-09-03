# Getting-and-Cleaning-Data-Course-Project
Course Project relating to the course Getting and Cleaning Data offered by Johns Hopkins University on Coursera

There is only one script runAnalysis.R it contains two functions **cleanData()** and **createDataset()**

**cleanData()** : This function does the following work:
               
               1) Loads all the data into dataframes.
               2)Merges the training set and testing set to create one complete dataset and also binds the activity labels and subject_id.
               3)Extracts only the mean and standard deviation variables of the dataset
               4)Renames variables in dataset to better decsriptive names 
**createDataset()** : This function does the following work:

               1)Splits the dataset(*R dataframe*) created by **cleanData()** according to different subjects(person on whom data was collected).
               2)Takes mean of all variables for each activity and each subject.
               3)Creates a new dataframe containing all the calculated measurements in above step.
               4)Adds a column giving the Description of the activity.
               5)writes this dataframe to a csvfile to create a tidy dataset.
               
