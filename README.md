getdataproject
==============



This repo is part of my Coursera Getting and Cleaning Data Class Project.

There is a script named "run_analysis.R"which takes raw data from a Samsung test and summarizes it and produces a tidy data
called "tidy_data2.txt" containg the mean and a small description of each measurement. A description of the variables
is found in the "CodeBook.md" file.

This script needs to be run in R Studio.


The following procedure is run by the code. This procedure is also found in the "CodeBook.md" file.

_______________________________________________________________
My code first takes the following URL and downloads the data:
"http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"Then it unzips the zip file.

After that it reads the data into R.
The data contains a a folder named "UCI HAR Dataset".
This file contains a folder named test and train.
Having a "X_test.txt" and "X_train.txt" respectively.
I read both files and merged them into a single data frame.

I calculated the mean and standard deviation for each measurment putting them in vectors named "Mean"
 and "Std_dev"
Then I used a file named "features.txt" located in the "UCI HAR Dataset" folder to extract the variable names.
They were put into a variable named "Variable"

I changed the variable names to descriptive activity names into a variable named "Description"
Then I labeled the data with the variables and descriptions into a variable named "tidy_data"
I created a second tidy extracting the mean, the variable and the activity name into a variable named "tidy_data2"

At last, made a text file containing the tidy data arranged in a readable way.