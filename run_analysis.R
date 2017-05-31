rm(list=ls())
library(plyr)

filename<-"UCIHARdataset.zip"
UCI<-"UCI HAR Dataset"

###checking if the data has been downloaded and extracted. If not, the script performs said actions.
if(!file.exists(UCI)){
  if(!file.exists(filename)){
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",filename,mode="wb")
    unzip(filename) 
  }
  else{
    unzip(filename)
  }
}

###reading labels and features, 
###then changing them  to be character class instead of factor,
###before finally extracting wanted features (mean and standard deviation) and
###increasing their readability/ease of coding
activitylabels<-read.table(file=paste(UCI,"/activity_labels.txt",sep=""))
features<-read.table(file=paste(UCI,"/features.txt",sep=""))

activitylabels[,2]<-as.character(activitylabels[,2])
features[,2]<-as.character(features[,2])

featuresIndex<-grep(".*std.*|.*mean.*",features[,2])
featuresTarget<-features[featuresIndex,2]
featuresTarget<-gsub("[(-)]","",featuresTarget)
featuresTarget<-tolower(featuresTarget)

###Loading the datasets 
train<-read.table(paste(UCI,"/train/X_train.txt",sep=""))[featuresIndex]
trainActivities<-read.table(paste(UCI,"/train/Y_train.txt",sep=""))
trainSubjects<-read.table(paste(UCI,"/train/subject_train.txt",sep=""))
trainAll<-cbind(trainActivities,trainSubjects,train)

test<-read.table(paste(UCI,"/test/X_test.txt",sep=""))[featuresIndex]
testActivities<-read.table(paste(UCI,"/test/Y_test.txt",sep=""))
testSubjects<-read.table(paste(UCI,"/test/subject_test.txt",sep=""))
testAll<-cbind(testActivities,testSubjects,test)

###Merging datasets (testAll and trainAll), adding descriptive labels 
###and changing subjects and activities into a factor
data<-rbind(trainAll,testAll)
colnames(data)<-c("activities","subjects",featuresTarget)
data$activities<-factor(data$activities,levels=activitylabels[,1],labels=activitylabels[,2])
data$subjects<-as.factor(data$subjects)

###Creates a second tidy data set with the average of each activity and subject, 
###using the package plyr
tidy.mean<-function(x){colMeans(x[,-c(1:2)])}
tidy.data<-ddply(data,.(activities,subjects),tidy.mean)

###Writing tidy.data to a text file
write.table(tidy.data,"tidyData.txt",row.names=F)
