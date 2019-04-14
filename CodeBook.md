CodeBook

This document contains the required sections in creating a codebook as specified and required in John Hopkins University's Getting and Cleaning Data Coursera Module.
There are 3 sections in this codebook: Data, Variables and Transformations.

1. Data
The output data of the run_analysis.R is the second_tidy_dataset.txt. This file contains 180 observations with 82 variables. The rows of this output dataset are the means and the standard deviation values derived from the various testing and training files given.

2. Variables
2.1. subject_id
    - contains the subject ID assigned to the test subjects/participants.
    
2.2. activity_id
    - contains the id (foreign) of the activity
    
2.3. activity_type
    - contains the descriptive name of the activity corresponding to the row.
    
2.4. Means and Standard Deviation variables derived from the test and training data. 

2.4.1. tBodyAcc-mean()-X           
2.4.2. tBodyAcc-mean()-Y              
2.4.3. tBodyAcc-mean()-Z              
2.4.4. tBodyAcc-std()-X               
2.4.5. tBodyAcc-std()-Y               
2.4.6. tBodyAcc-std()-Z               
2.4.7. tGravityAcc-mean()-X           
2.4.8. tGravityAcc-mean()-Y           
2.4.9. tGravityAcc-mean()-Z           
2.4.10. tGravityAcc-std()-X            
2.4.11. tGravityAcc-std()-Y            
2.4.12. tGravityAcc-std()-Z            
2.4.13. tBodyAccJerk-mean()-X          
2.4.14. tBodyAccJerk-mean()-Y          
2.4.15. tBodyAccJerk-mean()-Z          
2.4.16. tBodyAccJerk-std()-X           
2.4.17. tBodyAccJerk-std()-Y           
2.4.18. tBodyAccJerk-std()-Z           
2.4.19. tBodyGyro-mean()-X             
2.4.20. tBodyGyro-mean()-Y             
2.4.21. tBodyGyro-mean()-Z             
2.4.22. tBodyGyro-std()-X              
2.4.23. tBodyGyro-std()-Y              
2.4.24. tBodyGyro-std()-Z              
2.4.25. tBodyGyroJerk-mean()-X         
2.4.26. tBodyGyroJerk-mean()-Y         
2.4.27. tBodyGyroJerk-mean()-Z         
2.4.28. tBodyGyroJerk-std()-X          
2.4.29. tBodyGyroJerk-std()-Y          
2.4.30. tBodyGyroJerk-std()-Z          
2.4.31. tBodyAccMag-mean()             
2.4.32. tBodyAccMag-std()              
2.4.33. tGravityAccMag-mean()          
2.4.34. tGravityAccMag-std()           
2.4.35. tBodyAccJerkMag-mean()         
2.4.36. tBodyAccJerkMag-std()          
2.4.37. tBodyGyroMag-mean()            
2.4.38. tBodyGyroMag-std()             
2.4.39. tBodyGyroJerkMag-mean()        
2.4.40. tBodyGyroJerkMag-std()         
2.4.41. fBodyAcc-mean()-X              
2.4.42. fBodyAcc-mean()-Y              
2.4.43. fBodyAcc-mean()-Z              
2.4.44. fBodyAcc-std()-X               
2.4.45. fBodyAcc-std()-Y              
2.4.46. fBodyAcc-std()-Z               
2.4.47. fBodyAcc-meanFreq()-X          
2.4.48. fBodyAcc-meanFreq()-Y          
2.4.49. fBodyAcc-meanFreq()-Z          
2.4.51. fBodyAccJerk-mean()-X          
2.4.52. fBodyAccJerk-mean()-Y          
2.4.53. fBodyAccJerk-mean()-Z          
2.4.54. fBodyAccJerk-std()-X           
2.4.55. fBodyAccJerk-std()-Y           
2.4.56. fBodyAccJerk-std()-Z           
2.4.57. fBodyAccJerk-meanFreq()-X      
2.4.58. fBodyAccJerk-meanFreq()-Y      
2.4.59. fBodyAccJerk-meanFreq()-Z      
2.4.60. fBodyGyro-mean()-X             
2.4.61. fBodyGyro-mean()-Y             
2.4.62. fBodyGyro-mean()-Z             
2.4.63. fBodyGyro-std()-X              
2.4.64. fBodyGyro-std()-Y              
2.4.65. fBodyGyro-std()-Z              
2.4.66. fBodyGyro-meanFreq()-X         
2.4.67. fBodyGyro-meanFreq()-Y         
2.4.68. fBodyGyro-meanFreq()-Z         
2.4.69. fBodyAccMag-mean()          
2.4.70. fBodyAccMag-std()              
2.4.71. fBodyAccMag-meanFreq()         
2.4.72. fBodyBodyAccJerkMag-mean()     
2.4.73. fBodyBodyAccJerkMag-std()      
2.4.74. fBodyBodyAccJerkMag-meanFreq() 
2.4.75. fBodyBodyGyroMag-mean()        
2.4.76. fBodyBodyGyroMag-std()         
2.4.77. fBodyBodyGyroMag-meanFreq()    
2.4.78. fBodyBodyGyroJerkMag-mean()    
2.4.79. fBodyBodyGyroJerkMag-std()"     
2.4.80. fBodyBodyGyroJerkMag-meanFreq()

3. Transformation
3.1. cbind
- Used in combining y_train, subject_train and x_train data to form one dataset. Also used in y_test, subject_test and x_test to form another dataset.

3.2. rbind
- Used in combining the combined datasets of y_train, subject_train and x_train to the combined dataset of y_test, subject_test and x_test. 

3.3. merge
- Used in merging datasets with respect to a certain column to determine which rows to match.

3.4. aggregate
- Used in determining the mean per column in the dataset.

3.5. assignment operations
- Used in storing the results of operations (column names, results of datasets, etc.).
