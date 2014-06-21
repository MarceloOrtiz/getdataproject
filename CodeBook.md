Coursera Getting and Cleaning Data Class Project



Objective: In this project I took data from Samsung from accelerometer and gyrometer measurements and arranged it
 into a tidy data set.



Data:
The raw data contains 2 files named "X_test.txt" and "X_train.txt". Each containing 560 diferent variables.
Each variable is represented in a column and each row represents a measurement. Different measurements were made sensors using an accelerometer and a gyrometer. There is another file called "features.txt" which contains all the variable names.


The following abbreviations were used for the variables.
mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Transformations:
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
