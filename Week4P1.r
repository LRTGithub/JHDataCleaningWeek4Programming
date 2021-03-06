##
#==================================================================
#Human Activity Recognition Using Smartphones Dataset
#Version 1.0
##==================================================================
#Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
#Smartlab - Non Linear Complex Systems Laboratory
#DITEN - Universit� degli Studi di Genova.
#Via Opera Pia 11A, I-16145, Genoa, Italy.
#activityrecognition@smartlab.ws
#www.smartlab.ws
#==================================================================

#The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
#Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone 
#(Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial 
#angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset 
#has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test 
#data. 

#The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding 
#windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion 
#components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed 
#to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features 
#was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

#For each record it is provided:
#======================================

#- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
#- Triaxial Angular velocity from the gyroscope. 
#- A 561-feature vector with time and frequency domain variables. 
#- Its activity label. 
#- An identifier of the subject who carried out the experiment.

#The dataset includes the following files:
#=========================================

#- 'README.txt'

#- 'features_info.txt': Shows information about the variables used on the feature vector.

#- 'features.txt': List of all features.

#- 'activity_labels.txt': Links the class labels with their activity name.

#- 'train/X_train.txt': Training set.

#- 'train/y_train.txt': Training labels.

#- 'test/X_test.txt': Test set.

#- 'test/y_test.txt': Test labels.

#The following files are available for the train and test data. Their descriptions are equivalent. 

#- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

#- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity
# units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt'
# files for the Y and Z axis. 

#- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

#- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. 
#The units are radians/second. 

#Notes: 
#======
#- Features are normalized and bounded within [-1,1].
#- Each feature vector is a row on the text file.

#For more information about this dataset contact: activityrecognition@smartlab.ws

# PROGRAMMING PROJECT
#====================
#The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.
#Review criteria:

#   1 The submitted data set is tidy. 
#   2 The Github repo contains the required scripts.
#   3 GitHub contains a code book that modifies and updates the available codebooks with the data to 
#       indicate all the variables and summaries calculated, along with units, and any other relevant information.
#   4 The README that explains the analysis files is clear and understandable.
#   5 The work submitted for this project is the work of the student who submitted it.

# Getting and Cleaning Data Course Project
# The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 
# The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no 
# questions related to the project. You will be required to submit: 
# 1) a tidy data set as described below, 
# 2) a link to a Github repository with your script for performing the analysis, and 
# 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data 
# called CodeBook.md. You should also include a README.md in the repo with your scripts. 
# This repo explains how all of the scripts work and how they are connected.

# One of the most exciting areas in all of data science right now is wearable computing - see for example this article . 
# Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 
# The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
# A full description is available at the site where the data was obtained:

# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

# Here are the data for the project:

# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

#For each record it is provided:
#======================================

#- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
#- Triaxial Angular velocity from the gyroscope. 
#- A 561-feature vector with time and frequency domain variables. 
#- Its activity label. 
#- An identifier of the subject who carried out the experiment.

#Feature Selection 
#=================

#The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
#These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
#Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to 
#remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ 
#and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

#Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ 
#and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, 
#tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

#Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, 
#fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

#These signals were used to estimate variables of the feature vector for each pattern:  
#'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

#tBodyAcc-XYZ
#tGravityAcc-XYZ
#tBodyAccJerk-XYZ
#tBodyGyro-XYZ
#tBodyGyroJerk-XYZ
#tBodyAccMag
#tGravityAccMag
#tBodyAccJerkMag
#tBodyGyroMag
#tBodyGyroJerkMag
#fBodyAcc-XYZ
#fBodyAccJerk-XYZ
#fBodyGyro-XYZ
#fBodyAccMag
#fBodyAccJerkMag
#fBodyGyroMag
#fBodyGyroJerkMag

#The set of variables that were estimated from these signals are: 

#mean(): Mean value
#std(): Standard deviation
#mad(): Median absolute deviation 
#max(): Largest value in array
#min(): Smallest value in array
#sma(): Signal magnitude area
#energy(): Energy measure. Sum of the squares divided by the number of values. 
#iqr(): Interquartile range 
#entropy(): Signal entropy
#arCoeff(): Autorregresion coefficients with Burg order equal to 4
#correlation(): correlation coefficient between two signals
#maxInds(): index of the frequency component with largest magnitude
#meanFreq(): Weighted average of the frequency components to obtain a mean frequency
#skewness(): skewness of the frequency domain signal 
#kurtosis(): kurtosis of the frequency domain signal 
#bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
#angle(): Angle between to vectors.

#Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

#gravityMean
#tBodyAccMean
#tBodyAccJerkMean
#tBodyGyroMean
#tBodyGyroJerkMean

#The complete list of variables of each feature vector is available in 'features.txt'

# JOHNS HOPKINS
# DATA CLEANING R COURSE 
# WEEK 4 -- CODING ASSIGNMENT
#=============================
# git@github.com:LRTGithub/JHDataCleaningWeek4Programming.git
#=============================================================
# You should create one R script called run_analysis.R that does the following. 

#    Merges the training and the test sets to create one data set.
library( data.table )

# STEP 1: BUILD THE TEST DB
#===========================
#    Appropriately labels the data set with descriptive variable names. 
TestDB <- read.table( "X_test.txt", header = FALSE )
ColTitles <- read.table( "features.txt", header = FALSE )
ColTitles <- ColTitles[ , 2 ]
colnames( TestDB ) <- ColTitles
#colnames( TestDB )
# 1 Extracts only the measurements on the mean and standard deviation for each measurement. 
library( dplyr )
# 2 "mean" and "std" are matched and kept while mean and std dev for "Freq" and "angle" are dropped. 
TestDB <- select( TestDB, ( matches( c( "mean()", "std()" ) ) & !matches( c( "Freq", "angle" ) ) ) )
#names( TestDB )

# 3 Uses descriptive activity names to name the activities in the data set.
# 4 Read the activity labels from the original source txt file.
ActivityLabels <- read.table( "activity_labels.txt", header = FALSE )
# 5 Read the activity codes from the original source txt file.
ActivityCode <- read.table( "y_test.txt", header = FALSE )
# 6 Name activity codes with desciptive labels.
ActivityCode$V1 <- ActivityLabels$V2[ ActivityCode$V1 ]
# 7 Attach the column with descriptive activity to the test data set.
TestDB <- cbind(  ActivityCode, TestDB )
colnames( TestDB )[ colnames( TestDB ) == "V1" ] <- "Activity"
# 8 Attach the column of subject Id to the test data set.
SubjectTest <- read.table( "subject_test.txt", header = FALSE )
TestDB <- cbind(  SubjectTest, TestDB )
colnames( TestDB )[ colnames( TestDB ) == "V1" ] <- "Subject"
#names( TestDB )

# STEP 2: BUILD THE TRAIN DB
#===========================
# SAME STEPS AS ABOVE WITH THE TRAIN FILES.
TrainDB <- read.table( "X_train.txt", header = FALSE )
#ColTitles <- read.table( "features.txt", header = FALSE )
#ColTitles <- ColTitles[ , 2 ]
colnames( TrainDB ) <- ColTitles
#colnames( TrainDB )
# 1 Extracts only the measurements on the mean and standard deviation for each measurement. 
library( dplyr )
# 2 "mean" and "std" are matched and kept while mean and std dev for "Freq" and "angle" are dropped. 
TrainDB <- select( TrainDB, ( matches( c( "mean()", "std()" ) ) & !matches( c( "Freq", "angle" ) ) ) )
#names( TrainDB )

# 3 Uses descriptive activity names to name the activities in the data set.
# 4 Read the activity labels from the original source txt file.
# 5 Read the activity codes from the original source txt file.
ActivityCode <- read.table( "y_train.txt", header = FALSE )
# 6 Name activity codes with desciptive labels.
ActivityCode$V1 <- ActivityLabels$V2[ ActivityCode$V1 ]
# 7 Attach the column with descrptive activity to the train data set.
TrainDB <- cbind(  ActivityCode, TrainDB )
colnames( TrainDB )[ colnames( TrainDB ) == "V1" ] <- "Activity"
# 8 Attach the column of subject Id to the train data set.
Subject <- read.table( "subject_train.txt", header = FALSE )
TrainDB <- cbind(  Subject, TrainDB )
colnames( TrainDB )[ colnames( TrainDB ) == "V1" ] <- "Subject"
cat( "\nline 248\n")
names( TrainDB )

#STEP 3: MERGE THE TEST AND TRAIN DATA SETS INTO ONE
#====================================================
FullDataSet <- rbind( TestDB, TrainDB )
#str( FullDataSet )
cat( "\nline 255\n")
names( FullDataSet )

#STEP 4: CREATES NEW TIDY DATASET
#================================
#    From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity 
#    and each subject.
# 1 filter out the columns in the full data set which are not necessary in the mean sample.
MeanDataSet <- select( FullDataSet, (  !matches( c( "Freq", "angle","std()" ) ) ) ) #matches( "mean()" , "Activity" , "Subject" ) &
#str( MeanDataSet )
#cat( "\nline 264\n")
#names( MeanDataSet )

# 2 declare a data frame container "TidyDF" which will store the final result. This data frame will initially have 0 rows,
# and as many columns available in the mean data set, except 'Activity' and 'Subject', which will be added later.
TidyDF <- as.data.frame( matrix( 0, nrow = 0, ncol = ncol( MeanDataSet ) - 2 ) )
#cat("\n Line 271 \n")
#names( TidyDF )
#str( TidyDF )

# 3 declare a container to store "Subject" and "Activity".
First2Cols <- as.data.frame( matrix( 0, nrow = 0, ncol = 2 ) )
colnames( First2Cols ) <- c( "Subject", "Activity" )
#str( First2Cols )

# 4 This loop filters the MeanDataSet by Subject and activity:
for ( activity in unique( ActivityLabels$V2 ) ) {
        for ( subject in unique( MeanDataSet$Subject ) ){
                # 5 Log Subject and activity:
                First2Cols[ ( nrow( First2Cols ) + 1 ), 2 ] <- activity
                First2Cols[ ( nrow( First2Cols ) ), 1 ] <- subject
                # 6 declare a temporary data frame of 1 row to store the calculated means for each activity and subject:
                myrowtoadd <- as.data.frame( matrix( 0, nrow = 1, ncol = ncol( MeanDataSet ) - 2 ) )
                # 7 Calculate and Log the Means for all variables (columns):
                myrowtoadd[ 1, ] <-  colMeans( ( filter ( MeanDataSet, ( MeanDataSet$Subject == subject & MeanDataSet$Activity == activity ) ) )[ , 3 : ncol( MeanDataSet ) ] )                 
                #cat("\n Line 285 \n")
                #str( myrowtoadd )
                # 8 Add the row to the final Tidy Data Set:
                TidyDF <- rbind( TidyDF, myrowtoadd )
        }
}
#cat("\n Line 289 \n")
# 9 Label all variables with the correct descriptive names:
colnames( TidyDF ) <- colnames( MeanDataSet )[ 3: ncol( MeanDataSet )]
#str( TidyDF )
#names( TidyDF )

# 10 bring the 2 data sets together:
TidyDF <- cbind( First2Cols, TidyDF )
cat("\n Line 304 \n")
names( TidyDF )
cat("\n Line 306 \n")
str( TidyDF )
#cat("\n Line 310 \n")
#head( TidyDF )
#tail( TidyDF )