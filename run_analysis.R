run_analysis <- function(){
  
  ## read the files 
  ## set the public path
  filepath <- "./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset"
  
  ## read the activity_labels
  filelocation <- paste(filepath, "/activity_labels.txt", sep = "")
  activity_labels <- read.table(file = filelocation)
  ## read the features
  filelocation <- paste(filepath, "/features.txt", sep = "")
  features <- read.table(file = filelocation)
  
  ## read the X_test
  filelocation <- paste(filepath, "/test/X_test.txt", sep = "")
  X_test <- read.table(file = filelocation)
  ## read the y_test
  filelocation <- paste(filepath, "/test/y_test.txt", sep = "")
  y_test <- read.table(file = filelocation)
  ## read the subject_test
  filelocation <- paste(filepath, "/test/subject_test.txt", sep = "")
  subject_test <- read.table(file = filelocation)
  
  ## read the X_train
  filelocation <- paste(filepath, "/train/X_train.txt", sep = "")
  X_train <- read.table(file = filelocation)
  ## read the y_train
  filelocation <- paste(filepath, "/train/y_train.txt", sep = "")
  y_train <- read.table(file = filelocation)
  ## read the subject_train
  filelocation <- paste(filepath, "/train/subject_train.txt", sep = "")
  subject_train <- read.table(file = filelocation)
  
  ## bind y_test and subject_test
  ysubject_test <- cbind(y_test, subject_test)
  names(ysubject_test) <- c("activity", "subject")
  
  ## bind y_train and subject_train
  ysubject_train <- cbind(y_train, subject_train)
  names(ysubject_train) <- c("activity", "subject")
  
  ## merge the two frame
  ysubject <- merge(ysubject_test, ysubject_train, all = TRUE, sort = FALSE)
  
  ## replace the activity numbers
  namey <- vector("character", length = length(ysubject$activity))
  activity_labels$V2 <- as.character(activity_labels$V2)
  for(index in seq_along(namey)){
    namey[index] <- activity_labels$V2[ysubject$activity[index]]
  }
  ysubject$activity <- namey
  
  ## merge the test data and the train data
  data <- merge(X_test, X_train, all = TRUE, sort = FALSE)
  
  ## feature the data
  names(data) <- features$V2
  
  ## select the mean() and the std()
  select <- (grepl(pattern = "mean()", features$V2) | grepl(pattern = "std()", features$V2)) & !grepl(pattern = "meanFreq()", features$V2)
  data <- data[select]
  
  ## bind the ysubject and the data
  data_I <- cbind(ysubject, data)
  
  ## output the data_I
  write.table(data_I, file = "data_I.txt", row.name = FALSE)
  
  ## computed the mean value of each activity-subject pair
  library(dplyr)
  data_grouped <- group_by(data_I, activity, subject)
  data_II <- summarise_each(data_grouped, funs(mean))
  data_II
  
}