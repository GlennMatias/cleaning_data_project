#Coursera Project - Getting and Cleaning Data
#Author: Glenn Matias

#variable containing the directory to store the data
directory = 'dataset'


#check if folder is already in existing
if(!file.exists(paste("./",directory,sep = ""))){
    #create folder to store dataset
    dir.create(paste("./",directory,sep = ""))
}

#download the given dataset
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = paste("./",directory,"/dataset.zip",sep = ""))

#extract the dataset to the specified directory
unzip(zipfile = paste("./",directory,"/dataset.zip",sep = ""), exdir = paste("./",directory,sep = ""))



#Read the training datasets
x_train = read.table(paste('./', directory, "/UCI HAR Dataset/train/X_train.txt", sep = ""))
y_train = read.table(paste('./', directory, "/UCI HAR Dataset/train/y_train.txt", sep = ""))
subject_train = read.table(paste('./', directory, "/UCI HAR Dataset/train/subject_train.txt", sep = ""))

#Read the test datasets
x_test = read.table(paste('./', directory, "/UCI HAR Dataset/test/X_test.txt", sep = ""))
y_test = read.table(paste('./', directory, "/UCI HAR Dataset/test/y_test.txt", sep = ""))
subject_test = read.table(paste('./', directory, "/UCI HAR Dataset/test/subject_test.txt", sep = ""))

#Read feature file
features = read.table(paste('./', directory, "/UCI HAR Dataset/features.txt", sep = ""))


#Read activity_labels file
activity_labels = read.table(paste('./', directory, "/UCI HAR Dataset/activity_labels.txt", sep = ""))

#place feature rows as column names of x_train
colnames(x_train) = features[,2]
#set column name of y_train as activity_id
colnames(y_train) = "activity_id"
#set column name of subject_train as subject_id
colnames(subject_train) = "subject_id"

#place feature rows as column names of x_train
colnames(x_test) = features[,2]
#set column name of y_train as activity_id
colnames(y_test) = "activity_id"
#set column name of subject_test as subject_id
colnames(subject_test) = "subject_id"

#set activity_id and activity_type as column names of activity_labels table. It looks like a foreign table
colnames(activity_labels) = c('activity_id', 'activity_type')


#merge training datasets
merged_train = cbind(y_train, subject_train, x_train)

#merge test dataset
merged_test = cbind(y_test, subject_test, x_test)

#combine all datasets
combined_merged_test_and_train = rbind(merged_train, merged_test)

#get all the column sets of the combined dataset
all_column_names = colnames(combined_merged_test_and_train)

#vector to define ID, mean and the standard deviation
mean_and_standard_dev = (grepl("activity_id", all_column_names) | grepl("subject_id", all_column_names) | grepl("mean..", all_column_names) | grepl("std..", all_column_names) )

#subset for mean and standard dev based on line above
subset_for_mean_and_std = combined_merged_test_and_train[ , mean_and_standard_dev == TRUE]

#set column headers based on activity_id

subset_with_activity_names = merge(subset_for_mean_and_std, activity_labels, by = "activity_id", all.x = TRUE)
#create a second, independent tidy data set with the average of each variable for each activity and each subject
second_tidy_dataset = aggregate(. ~subject_id + activity_id + activity_type, subset_with_activity_names, mean)
second_tidy_dataset = second_tidy_dataset[order(second_tidy_dataset$subject_id, second_tidy_dataset$activity_id), ]

#output second_tidy_dataset into another file
write.table(second_tidy_dataset, "second_tidy_dataset.txt", row.name = FALSE)
