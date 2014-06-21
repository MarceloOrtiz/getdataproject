##Download data from internet and load into R

fileUrl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./getdata.zip")

unzip("getdata.zip")

data_test <- read.table("UCI HAR Dataset/test/X_test.txt")
data_train <- read.table("UCI HAR Dataset/train/X_train.txt")

##1- Merge training and test sets 

data <- rbind(data_test,data_train)

##2- Extract mean and standard deviation for each measurement

Mean <- as.vector(apply(data, 2, mean))
Std_Dev <- as.vector(apply(data, 2, sd))

##3- Use descriptive names to name the activities

names <- read.table("UCI HAR Dataset/features.txt")
Variable <- as.vector(names[,2])

Description <- Variable
Description <- gsub("tBodyAcc-","Time Body Accelerometer ",Description)
Description <- gsub("tGravityAcc-","Time Gravity Accelerometer ",Description)
Description <- gsub("tBodyAccJerk-","Time Body Accelerometer Jerk ",Description)
Description <- gsub("tBodyGyro-","Time Body Gyroscope ",Description)
Description <- gsub("tBodyGyroJerk-","Time Body Gyroscope Jerk ",Description)
Description <- gsub("tBodyAccMag-","Time Body Accelerometer Gravity Magnitude ",Description)
Description <- gsub("tGravityAccMag-","Time Gravity Accelerometer Magnitude ",Description)
Description <- gsub("tBodyAccJerkMag-","Time Body Accelerometer Jerk Magnitude ",Description)
Description <- gsub("tBodyGyroMag-","Time Body Gyroscope Magnitude ",Description)
Description <- gsub("tBodyGyroJerkMag-","Time Body Gyroscope Jerk Magnitude ",Description)
Description <- gsub("fBodyAcc-","Frequency Body Accelerometer ",Description)
Description <- gsub("fBodyAccJerk-","Frequency Body Accelerometer Jerk ",Description)
Description <- gsub("fBodyGyro-","Frequency Body Gyrometer ",Description)
Description <- gsub("fBodyAccMag-","Frequency Body Accelerometer Magnitude ",Description)
Description <- gsub("fBodyBodyAccJerkMag","Frequency Body Accelerometer Jerk Magnitude ",Description)
Description <- gsub("fBodyBodyGyroMag-","Frequency Body Accelerometer Gyrometer Magnitude ",Description)
Description <- gsub("fBodyBodyGyroJerkMag-","Frequency Body Accelerometer Gyrometer Jerk Magnitude ",Description)
Description <- gsub("fBodyBodyGyroMag-","Frequency Body Accelerometer Gyrometer Magnitude ",Description)
Description <- gsub("tBodyAccMean","Time Body Accelerometer Mean ",Description)
Description <- gsub("tBodyAccJerkMean","Time Body Accelerometer Jerk Mean ",Description)
Description <- gsub("tBodyGyroMean","Time Body Gyrometer Mean ",Description)
Description <- gsub("tBodyGyroJerkMean","Time Body Gyrometer Jerk Mean ",Description)
Description <- gsub("bandsEnergy","Bands Energy ",Description)
Description <- gsub("gravity","Gravity ",Description)

##4- Label data set with descriptive variable names

tidy_data <- cbind(Variable,Mean,Std_Dev,Description)

##5- Create a second independent tidy data set with average for each activity and subject

tidy_data2 <- tidy_data[,c(1,2,4)]

write.table(x = tidy_data2, file = "tidy_data2.txt",sep = "\t\t",quote = F,col.names =
	c("Variable\t\t","Mean\t","Activity"), row.names = F)
