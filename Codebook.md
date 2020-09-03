# Getting and Cleaning Data-Course Project

## Modifications on original data

* Merging the training set and testing set
* Extracting the variables or features containing mean or standard deviation
* Renaming Variable Names making it more descriptive and easy to understand
* Labelling the activities with descriptive names
* Creating a second, independent tidy data set with the average of each variable for each activity and each subject.

## Variable Descriptions

### Identifiers
* Activity Label - A number indicating which activity
* Subject No. - Number indicating on which subject data was collected
* Activity Label Description - Textual Description of the activity

The above columns are the last three respectively.

Explanation for each variable is not provided as they are quite self-explanatory.
But these are meaning of abbrevations:


                    1)acc - acceleration
                    2)(Time) - this means the measurement is in time domain
                    3)(Frequency) - this means the measurement is in frequency domain
                    4)angvelocity - Angular Velocity


### Modified Variable Names in tidy dataset

* linearaccbody(Time)-mean()-X
* linearaccbody(Time)-mean()-Y
* linearaccbody(Time)-mean()-Z
* linearaccbody(Time)-std()-X
* linearaccbody(Time)-std()-Y
* linearaccbody(Time)-std()-Z
* gravityaccbody(Time)-mean()-X
* gravityaccbody(Time)-mean()-Y
* gravityaccbody(Time)-mean()-Z
* gravityaccbody(Time)-std()-X
* gravityaccbody(Time)-std()-Y
* gravityaccbody(Time)-std()-Z
* linearaccbody(Time)Jerk-mean()-X
* linearaccbody(Time)Jerk-mean()-Y
* linearaccbody(Time)Jerk-mean()-Z
* linearaccbody(Time)Jerk-std()-X
* linearaccbody(Time)Jerk-std()-Y
* linearaccbody(Time)Jerk-std()-Z
* angvelocitybody(Time)-mean()-X
* angvelocitybody(Time)-mean()-Y
* angvelocitybody(Time)-mean()-Z
* angvelocitybody(Time)-std()-X
* angvelocitybody(Time)-std()-Y
* angvelocitybody(Time)-std()-Z
* angvelocitybody(Time)Jerk-mean()-X
* angvelocitybody(Time)Jerk-mean()-Y
* angvelocitybody(Time)Jerk-mean()-Z
* angvelocitybody(Time)Jerk-std()-X
* angvelocitybody(Time)Jerk-std()-Y
* angvelocitybody(Time)Jerk-std()-Z
* linearaccbody(Time)magnitude-mean()
* linearaccbody(Time)magnitude-std()
* gravityaccbody(Time)magnitude-mean()
* gravityaccbody(Time)magnitude-std()
* linearaccbody(Time)Jerkmagnitude-mean()
* linearaccbody(Time)Jerkmagnitude-std()
* angvelocitybody(Time)magnitude-mean()
* angvelocitybody(Time)magnitude-std()
* angvelocitybody(Time)Jerkmagnitude-mean()
* angvelocitybody(Time)Jerkmagnitude-std()
* linearaccbody(Frequency-mean()-X
* linearaccbody(Frequency-mean()-Y
* linearaccbody(Frequency-mean()-Z
* linearaccbody(Frequency-std()-X
* linearaccbody(Frequency-std()-Y
* linearaccbody(Frequency-std()-Z
* linearaccbody(Frequency-meanFreq()-X
* linearaccbody(Frequency-meanFreq()-Y
* linearaccbody(Frequency-meanFreq()-Z
* linearaccbody(FrequencyJerk-mean()-X
* linearaccbody(FrequencyJerk-mean()-Y
* linearaccbody(FrequencyJerk-mean()-Z
* linearaccbody(FrequencyJerk-std()-X
* linearaccbody(FrequencyJerk-std()-Y
* linearaccbody(FrequencyJerk-std()-Z
* linearaccbody(FrequencyJerk-meanFreq()-X
* linearaccbody(FrequencyJerk-meanFreq()-Y
* linearaccbody(FrequencyJerk-meanFreq()-Z
* angvelocitybody(Frequency)-mean()-X
* angvelocitybody(Frequency)-mean()-Y
* angvelocitybody(Frequency)-mean()-Z
* angvelocitybody(Frequency)-std()-X
* angvelocitybody(Frequency)-std()-Y
* angvelocitybody(Frequency)-std()-Z
* angvelocitybody(Frequency)-meanFreq()-X
* angvelocitybody(Frequency)-meanFreq()-Y
* angvelocitybody(Frequency)-meanFreq()-Z
* linearaccbody(Frequencymagnitude-mean()
* linearaccbody(Frequencymagnitude-std()
* linearaccbody(Frequencymagnitude-meanFreq()
* BodyBodylinearacc(Frequency)Jerkmagnitude-mean()
* BodyBodylinearacc(Frequency)Jerkmagnitude-std()
* BodyBodylinearacc(Frequency)Jerkmagnitude-meanFreq()
* BodyBodyangvelocity(Frequency)magnitude-mean()
* BodyBodyangvelocity(Frequency)magnitude-std()
* BodyBodyangvelocity(Frequency)magnitude-meanFreq()
* BodyBodyangvelocity(Frequency)Jerkmagnitude-mean()
* BodyBodyangvelocity(Frequency)Jerkmagnitude-std()
* BodyBodyangvelocity(Frequency)Jerkmagnitude-meanFreq()
* angle(linearaccbody(Time)Mean,gravity)
* angle(linearaccbody(Time)JerkMean),gravityMean)
* angle(angvelocitybody(Time)Mean,gravityMean)
* angle(angvelocitybody(Time)JerkMean,gravityMean)
* angle(X,gravityMean)
* angle(Y,gravityMean)
* angle(Z,gravityMean)
* Activity Label
* Subject No.
* Activity Label Description
