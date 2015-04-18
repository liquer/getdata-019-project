# CODE BOOK

## The Analysed UCI HAR Dataset

The data set processed by the run_analysis function contains is introduced from the [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) program. We choose the mean value and the standard deviation from the raw data and grouped them according to the tags of "activity" and "subject".

The specific explanation is below.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

1. activity: (char)One of the six activities the person who carried out the experiment performed: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. 
2. subject: (int)An identifier of the subject who carried out the experiment.
3. tBodyAcc-mean()-X: (double)The mean value of the body acceleration X-axial signals.
4. tBodyAcc-mean()-Y: (double)The mean value of the body acceleration Y-axial signals.
5. tBodyAcc-mean()-Z: (double)The mean value of the body acceleration Z-axial signals.
6. tBodyAcc-std()-X: (double)The standard deviation of the body acceleration X-axial signals.
7. tBodyAcc-std()-Y: (double)The standard deviation of the body acceleration Y-axial signals.
8. tBodyAcc-std()-Z: (double)The standard deviation of the body acceleration Z-axial signals.
9. tGravityAcc-mean()-X: (double)The mean value of the gravity acceleration X-axial signals.
10. tGravityAcc-mean()-Y: (double)The mean value of the gravity acceleration Y-axial signals.
11. tGravityAcc-mean()-Z: (double)The mean value of the gravity acceleration Z-axial signals.
12. tGravityAcc-std()-X: (double)The standard deviation of the gravity acceleration X-axial signals.
13. tGravityAcc-std()-Y: (double)The standard deviation of the gravity acceleration Y-axial signals.
14. tGravityAcc-std()-Z: (double)The standard deviation of the gravity acceleration Z-axial signals.
15. tBodyAccJerk-mean()-X: (double)The mean value of the body acceleration Jerk X-axial signals.
16. tBodyAccJerk-mean()-Y: (double)The mean value of the body acceleration Jerk Y-axial signals.
17. tBodyAccJerk-mean()-Z: (double)The mean value of the body acceleration Jerk Z-axial signals.
18. tBodyAccJerk-std()-X: (double)The standard deviation of the body acceleration Jerk X-axial signals.
19. tBodyAccJerk-std()-Y: (double)The standard deviation of the body acceleration Jerk Y-axial signals.
20. tBodyAccJerk-std()-Z: (double)The standard deviation of the body acceleration Jerk Z-axial signals.
21. tBodyGyro-mean()-X: (double)The mean value of the body gyroscope X-axial signals.
22. tBodyGyro-mean()-Y: (double)The mean value of the body gyroscope Y-axial signals.
23. tBodyGyro-mean()-Z: (double)The mean value of the body gyroscope Z-axial signals.
24. tBodyGyro-std()-X: (double)The standard deviation of the body gyroscope X-axial signals.
25. tBodyGyro-std()-Y: (double)The standard deviation of the body gyroscope Y-axial signals.
26. tBodyGyro-std()-Z: (double)The standard deviation of the body gyroscope Z-axial signals.
27. tBodyGyroJerk-mean()-X: (double)The mean value of the body gyroscope Jerk X-axial signals.
28. tBodyGyroJerk-mean()-Y: (double)The mean value of the body gyroscope Jerk Y-axial signals.
29. tBodyGyroJerk-mean()-Z: (double)The mean value of the body gyroscope Jerk Z-axial signals.
30. tBodyGyroJerk-std()-X: (double)The standard deviation of the body gyroscope Jerk X-axial signals.
31. tBodyGyroJerk-std()-Y: (double)The standard deviation of the body gyroscope Jerk Y-axial signals.
32. tBodyGyroJerk-std()-Z: (double)The standard deviation of the body gyroscope Jerk Z-axial signals.
33. tBodyAccMag-mean(): (double)The mean value of the body acceleration magnitude signals.
34. tBodyAccMag-std(): (double)The standard deviation of the body acceleration magnitude signals.
35. tGravityAccMag-mean(): (double)The mean value of the gravity acceleration magnitude signals.
36. tGravityAccMag-std(): (double)The standard deviation of the gravity acceleration magnitude signals.
37. tBodyAccJerkMag-mean(): (double)The mean value of the body acceleration Jerk magnitude signals.
38. tBodyAccJerkMag-std(): (double)The standard deviation of the body acceleration Jerk magnitude signals.
39. tBodyGyroMag-mean(): (double)The mean value of the body gyroscope magnitude signals.
40. tBodyGyroMag-std(): (double)The standard deviation of the body gyroscope magnitude signals.
41. tBodyGyroJerkMag-mean(): (double)The mean value of the body gyroscope Jerk magnitude signals.
42. tBodyGyroJerkMag-std(): (double)The standard deviation of the body gyroscope Jerk magnitude signals.
43. fBodyAcc-mean()-X: (double)The mean value of the body acceleration X-axial FFT.
44. fBodyAcc-mean()-Y: (double)The mean value of the body acceleration Y-axial FFT.
45. fBodyAcc-mean()-Z: (double)The mean value of the body acceleration Z-axial FFT.
46. fBodyAcc-std()-X: (double)The standard deviation of the body acceleration X-axial FFT.
47. fBodyAcc-std()-Y: (double)The standard deviation of the body acceleration Y-axial FFT.
48. fBodyAcc-std()-Z: (double)The standard deviation of the body acceleration Z-axial FFT.
49. fBodyAccJerk-mean()-X: (double)The mean value of the body acceleration Jerk X-axial FFT.
50. fBodyAccJerk-mean()-Y: (double)The mean value of the body acceleration Jerk Y-axial FFT.
51. fBodyAccJerk-mean()-Z: (double)The mean value of the body acceleration Jerk Z-axial FFT.
52. fBodyAccJerk-std()-X: (double)The standard deviation of the body acceleration Jerk X-axial FFT.
53. fBodyAccJerk-std()-Y: (double)The standard deviation of the body acceleration Jerk Y-axial FFT.
54. fBodyAccJerk-std()-Z: (double)The standard deviation of the body acceleration Jerk Z-axial FFT.
55. fBodyGyro-mean()-X: (double)The mean value of the body gyroscope X-axial FFT.
56. fBodyGyro-mean()-Y: (double)The mean value of the body gyroscope Y-axial FFT.
57. fBodyGyro-mean()-Z: (double)The mean value of the body gyroscope Z-axial FFT.
58. fBodyGyro-std()-X: (double)The standard deviation of the body gyroscope X-axial FFT.
59. fBodyGyro-std()-Y: (double)The standard deviation of the body gyroscope Y-axial FFT.
60. fBodyGyro-std()-Z: (double)The standard deviation of the body gyroscope Z-axial FFT.
61. fBodyAccMag-mean(): (double)The mean value of the body acceleration magnitude FFT.
62. fBodyAccMag-std(): (double)The standard deviation of the body acceleration magnitude FFT.
63. fBodyBodyAccJerkMag-mean(): (double)The mean value of the body acceleration Jerk magnitude FFT.
64. fBodyBodyAccJerkMag-std(): (double)The standard deviation of the body acceleration Jerk magnitude FFT.
65. fBodyBodyGyroMag-mean(): (double)The mean value of the body gyroscope magnitude FFT.
66. fBodyBodyGyroMag-std(): (double)The standard deviation of the body gyroscope magnitude FFT.
67. fBodyBodyGyroJerkMag-mean(): (double)The mean value of the body gyroscope Jerk magnitude FFT.
68. fBodyBodyGyroJerkMag-std(): (double)The standard deviation of the body gyroscope Jerk magnitude FFT.