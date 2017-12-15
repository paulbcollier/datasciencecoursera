CodeBook.md

This file contains the variables and descriptions resulting from the data cleaning performed. In the file Activity Averages, you will find 180 observations of 81 varibles. The 180 observations correspond with each activity and participant (6 activities multiplied by 30 participants equals 180 observations). Each of the 81 columns are detailed below:

Subject / Activity Information: 

 [1] "activityname"  = The activity each subject was performing                   
 [2] "subject" = The subject (1 - 30)

Mean Measures: 
 [3] "tBodyAcc.mean...X_average" = average of the averages of body acceleration signals on the X axis
 [4] "tBodyAcc.mean...Y_average" = average of the averages of body acceleration signals on the Y axis
 [5] "tBodyAcc.mean...Z_average" = average of the averages of body acceleration signals on the Z axis
 [6] "tGravityAcc.mean...X_average" = average of the averages of gravity acceleration signals on the X axis
 [7] "tGravityAcc.mean...Y_average" = "" on the Y axis           
 [8] "tGravityAcc.mean...Z_average" = "" on the Z axis
 [9] "tBodyAccJerk.mean...X_average" = average of the averages of body acceleration jerk signals on the X axis          
[10] "tBodyAccJerk.mean...Y_average" = "" on the Y axis
[11] "tBodyAccJerk.mean...Z_average" = "" on the Z axis
[12] "tBodyGyro.mean...X_average" = average of the averages of body gyro signals on the X axis            
[13] "tBodyGyro.mean...Y_average" = "" on the Y axis
[14] "tBodyGyro.mean...Z_average" = "" on the Z axis            
[15] "tBodyGyroJerk.mean...X_average" = average of the averages of body gyro jerk signals on the X axis 
[16] "tBodyGyroJerk.mean...Y_average" = "" on the Y axis         
[17] "tBodyGyroJerk.mean...Z_average" = "" on the Z axis         
[18] "tBodyAccMag.mean.._average" = Average of the averages of the magnitude of body acceleration signals             
[19] "tGravityAccMag.mean.._average" = Average of the averages of the magnitude of gravity acceleration signals            
[20] "tBodyAccJerkMag.mean.._average" = Average of the averages of the magnitude of body jerk acceleration signals                     
[21] "tBodyGyroMag.mean.._average" = Average of the averages of the magnitude of body gyro signals                        
[22] "tBodyGyroJerkMag.mean.._average" = Average of the averages of the magnitude of body gyro jerk signals                    
[23] "fBodyAcc.mean...X_average" = Average of the averages of a Fast Forier Transform (FFT) applied to the body acceleration signals on the X axis          
[24] "fBodyAcc.mean...Y_average" = "" on the Y axis             
[25] "fBodyAcc.mean...Z_average" = "" on the Z axis 

and so on for the remaining columns.  

[26] "fBodyAcc.meanFreq...X_average"
[27] "fBodyAcc.meanFreq...Y_average"          
[28] "fBodyAcc.meanFreq...Z_average"          
[29] "fBodyAccJerk.mean...X_average"          
[30] "fBodyAccJerk.mean...Y_average"          
[31] "fBodyAccJerk.mean...Z_average"          
[32] "fBodyAccJerk.meanFreq...X_average"      
[33] "fBodyAccJerk.meanFreq...Y_average"      
[34] "fBodyAccJerk.meanFreq...Z_average"      
[35] "fBodyGyro.mean...X_average"             
[36] "fBodyGyro.mean...Y_average"             
[37] "fBodyGyro.mean...Z_average"             
[38] "fBodyGyro.meanFreq...X_average"         
[39] "fBodyGyro.meanFreq...Y_average"         
[40] "fBodyGyro.meanFreq...Z_average"         
[41] "fBodyAccMag.mean.._average"             
[42] "fBodyAccMag.meanFreq.._average"         
[43] "fBodyBodyAccJerkMag.mean.._average"     
[44] "fBodyBodyAccJerkMag.meanFreq.._average" 
[45] "fBodyBodyGyroMag.mean.._average"        
[46] "fBodyBodyGyroMag.meanFreq.._average"    
[47] "fBodyBodyGyroJerkMag.mean.._average"    
[48] "fBodyBodyGyroJerkMag.meanFreq.._average"

Standard Deviation Measures: 
[49] "tBodyAcc.std...X_average"  = Average of the averages of standard deviations of body acceleration measures on the X axis               
[50] "tBodyAcc.std...Y_average" = "" on the Y axis               
[51] "tBodyAcc.std...Z_average" = "" on the Z axis

And so on for the remaining columns...

[52] "tGravityAcc.std...X_average"            
[53] "tGravityAcc.std...Y_average"            
[54] "tGravityAcc.std...Z_average"            
[55] "tBodyAccJerk.std...X_average"           
[56] "tBodyAccJerk.std...Y_average"           
[57] "tBodyAccJerk.std...Z_average"           
[58] "tBodyGyro.std...X_average"              
[59] "tBodyGyro.std...Y_average"              
[60] "tBodyGyro.std...Z_average"              
[61] "tBodyGyroJerk.std...X_average"          
[62] "tBodyGyroJerk.std...Y_average"          
[63] "tBodyGyroJerk.std...Z_average"          
[64] "tBodyAccMag.std.._average"              
[65] "tGravityAccMag.std.._average"           
[66] "tBodyAccJerkMag.std.._average"          
[67] "tBodyGyroMag.std.._average"             
[68] "tBodyGyroJerkMag.std.._average"         
[69] "fBodyAcc.std...X_average"               
[70] "fBodyAcc.std...Y_average"               
[71] "fBodyAcc.std...Z_average"               
[72] "fBodyAccJerk.std...X_average"           
[73] "fBodyAccJerk.std...Y_average"           
[74] "fBodyAccJerk.std...Z_average"           
[75] "fBodyGyro.std...X_average"              
[76] "fBodyGyro.std...Y_average"              
[77] "fBodyGyro.std...Z_average"              
[78] "fBodyAccMag.std.._average"              
[79] "fBodyBodyAccJerkMag.std.._average"      
[80] "fBodyBodyGyroMag.std.._average"         
[81] "fBodyBodyGyroJerkMag.std.._average" 



For Reference: Feature Selection (from the original "features_info" file provided with the dataset) 

The features selected for this database come from the accelerator and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

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

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'