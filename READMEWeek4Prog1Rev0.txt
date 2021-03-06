README
==========
DATE: 2021-07-03
================
PREPARED BY: LR
================
REVISION: 0
============

PROGRAMMING ASSIGNMENT
JOHNS HOPKINS UNIVERSITY DATA CLEANING COURSE
WEEK 4
==============================================

==============================================
git@github.com:LRTGithub/JHDataCleaningWeek4Programming.git
============================================================
commit number: e7a651dc2c27e1be705f79e949f52d6cb39e1391
========================================================
https://github.com/LRTGithub/JHDataCleaningWeek4Programming
============================================================

The purpose of the assignment is to derive summary descriptive statistics of the larger Dataset with experimental data.
The data is summarized by R script "Week4P1.r".
This "READMEWeek4Prog1Rev0.txt" file and the "CodeBookWeek4Prog1Rev0.txt" along with the following initial feed files:
y_test.txt
X-test.txt
subject_test.txt
y_train.txt
X-train.txt
subject_train.txt
activity_labels.txt
features.txt

make the entire package. All files shall reside in the same directory.

The following files provide additional information:
features_info.text
README.txt (original readme file, copied below for reference).

The code is structured to accomplish the objectives of the assignment in 4 steps. 
Steps 1 through 3 cover the following:
# STEP 1: BUILD THE TEST DB ( code lines 192 to 257 )
#===========================
# 1 Extracts only the measurements on the mean and standard deviation for each measurement. 
# 2 "mean" and "std" are matched and kept while mean and std dev for "Freq" and "angle" are dropped. 
# 3 Uses descriptive activity names to name the activities in the data set.
# 4 Read the activity labels from the original source txt file.
# 5 Read the activity codes from the original source txt file.
# 6 Name activity codes with desciptive labels. Appropriately labels the data set with descriptive variable names. 
# 7 Attach the column with descriptive activity to the test data set.
# 8 Attach the column of subject Id to the test data set.

# STEP 2: BUILD THE TRAIN DB
#===========================
# SAME STEPS AS ABOVE WITH THE TRAIN FILES.

#STEP 3: MERGE THE TEST AND TRAIN DATA SETS INTO ONE
#====================================================

One additional step is added to further create a tidy data set and summarize it by Subject / Activity the data set created in STEPS 1 through 3:

#STEP 4: CREATES NEW TIDY DATASET ( code lines 259 to 311 )
#================================
#    From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity 
#    and each subject.
# 1 filter out the columns in the full data set which are not necessary in the mean sample.
# 2 declare a data frame container "TidyDF" which will store the final result. This data frame will initially have 0 rows,
# and as many columns available in the mean data set, except 'Activity' and 'Subject', which will be added later.
# 3 declare a container to store "Subject" and "Activity".
# 4 This loop filters the MeanDataSet by Subject and activity:
# 5 Log Subject and activity:
# 6 declare a temporary data frame of 1 row to store the calculated means for each activity and subject:
# 7 Calculate and Log the Means for all variables (columns):
# 8 Add the row to the final Tidy Data Set:
# 9 Label all variables with the correct descriptive names:
# 10 bring the 2 data sets together:

Each bullet within each STEP is a meaningful line of code.
============================================================================================================================================================

============================================================================================================================================================
ORIGINAL README FILE
======================
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit??? degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity 
units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' 
files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. 
The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

