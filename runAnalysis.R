cleanData<-function(){
  
    traindata <- read.table("./train/X_train.txt")
    traindata_labels <- read.table("./train/y_train.txt")
    subject_train <- read.table("./train/subject_train.txt")
    
    
    testdata <- read.table("./test/X_test.txt")
    testdata_labels <- read.table("./test/y_test.txt")
    subject_test <- read.table("./test/subject_test.txt")
    
    
    myData <- rbind(traindata,testdata)
    myLabels <- rbind(traindata_labels,testdata_labels)
    mySubject <- rbind(subject_train,subject_test)
    
    variables <- read.table("./features.txt")

    variable_names <- variables$V2
    
    colnames(myData) <- variable_names
    
    cut_mean_std <- grep("[Mm][Ee][Aa][Nn]|[Ss][Tt][Dd]"
                         ,colnames(myData))
    
    myData_meanstd <- myData[,cut_mean_std]
    
    names <- colnames(myData_meanstd)
    
    names = gsub("tBodyAcc","linearaccbody(Time)",names)
    names = gsub("tGravityAcc","gravityaccbody(Time)",names)
    names = gsub("Mag","magnitude",names)
    names = gsub("tBodyGyro","angvelocitybody(Time)",names)
    names = gsub("fBodyAcc","linearaccbody(Frequency)",names)
    names = gsub("fBodyGyro","angvelocitybody(Frequency)",names)
    names = gsub("fBodyBodyGyro","BodyBodyangvelocity(Frequency)",names)
    names = gsub("fBodyBodyAcc","BodyBodylinearacc(Frequency)",names)
    
    colnames(myData_meanstd)= names
    
    cleaned_data <- myData_meanstd
        
    cleaned_data$"Activity Label" <- myLabels
    cleaned_data$"Subject No." <- mySubject
    #cleaned_data = cleaned_data[,1:88]
    return (cleaned_data)
}

createDataset<-function(dataset){
  
  col_names = colnames(dataset)
  data_split <- split(dataset,dataset$"Subject No.")
  
  func <- function(data=data_split){
    m <- split(data,data$"Activity Label")
    l <- sapply(m,colMeans)
    return (l)}
  
  grouped_data_mean <- sapply(data_split,func)
  
  for (i in 1:30){
    n <- rbind(gdata[1:88,i],gdata[89:176,i],gdata[177:264,i],gdata[265:352,i],gdata[353:440,i],gdata[441:528,i])
    assign(paste0("n",i),n)
    
  }
  
  new_dataset <- rbind(n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15,n16,n17,n18,n19,n20,n21,n22,n23,n24,n25,n26,n27,n28,n29,n30)
  new_dataset <- data.frame(new_dataset)
  
  colnames(new_dataset) <- col_names
  
  activity_lables <- c("SUBJECT IS WALKING ON LEVELLED SURFACE",
   "SUBJECT IS WALKING UPHILL OR UPSTAIRS",
   "SUBJECT IS WALKING DOWNHILL OR DOWNSTAIRS",
   "SUBJECT IS SITTING",
   "SUBJECT IS JUST STANDING",
   "SUBJECT IS LAYING OR RESTING")
  
  new_dataset$"Activity Label Description" <- new_dataset$"Activity Label" 
  
  for (i in 1:6){
    d_labels <- gsub(i,activity_lables[i],new_dataset$"Activity Label Description")
    new_dataset$"Activity Label Description" <- d_labels
    
  }
  
  #new_dataset$"Activity Label" <- descriptive_labels
  
  write.csv(new_dataset,"./New Datset.csv")
  
  
}