library(dplyr)

wd <- paste0(getwd(),"/UCI HAR Dataset")

data <- read.table(paste0(wd,"/features.txt"), colClasses = "character") [,2]


train_x <- read.table(paste0(wd,"/train/X_train.txt"), col.names = data, check.names = F)
train_y <- read.table(paste0(wd,"/train/y_train.txt"), col.names = c('activity'))
subject.train <- read.table(paste0(wd,"/train/subject_train.txt"), col.names = c('subject'))

test_x <- read.table(paste0(wd,"/test/X_test.txt"), col.names = data, check.names = F)
test_y <- read.table(paste0(wd,"/test/Y_test.txt"), col.names = c('activity'))
subject.test <- read.table(paste0(wd,"/test/subject_test.txt"), col.names = c('subject'))

act_labels <- read.table(paste0(wd,"/activity_labels.txt"), col.names = c('n','text'))

alldata <- cbind(rbind(train_x, test_x),
                 rbind(train_y, test_y), 
                 rbind(subject.train, subject.test))

data1 <- alldata[, !duplicated(colnames(alldata))]
data2 <- select(data1,  matches("mean\\(\\)|std\\(\\)|subject|activity"))

data3 <- within(data2, activity <- factor(activity, labels = act_labels[,2]))

data4 <- aggregate(x = data3[, -c(67,68)], 
                   by = list(data3[,'subject'], data3[, 'activity']),
                   FUN = mean)

write.csv(data4, "tidy_dataset.csv", row.names=F)
