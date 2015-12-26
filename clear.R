library(reshape2)

# reading features table

fea1 <- read.table('features.txt', stringsAsFactors = FALSE)

# reading activity lables

ala <- read.table('activity_labels.txt', stringsAsFactors = FALSE)

# reading train dataset

set1 <- read.table('train/X_train.txt')

set11 <- read.table('train/y_train.txt')

set12 <- read.table('train/subject_train.txt')

# reading test dataset

set1 <- rbind(set1, read.table('test/X_test.txt'))

set11 <- rbind(set11, read.table('test/y_test.txt'))

set12 <- rbind(set12, read.table('test/subject_test.txt'))

# selecting columns of the mean and standard deviation

scol <- grep('mean|std', fea1$V2)

set1 <- set1[, scol]

# Setting column names

names(set1) <- fea1[scol, ]$V2

# Merging with activity lables

set11 <- merge(set11, ala, by.x="V1", by.y = "V1", sort=FALSE)

# Setting column names

names(set11) <- c('Activity_ID', 'Activity_name')

names(set12) <- c('Subject_ID')

# Merging with Activity labels and  Subject_IDs

set1 <- cbind(set1, Activity_name = set11[, 2], set12)

# Melting dataset

set1melted <- melt(set1, c('Subject_ID', 'Activity_name'))

# Making a wide resultset

set1wide <- dcast(set1melted,Subject_ID + Activity_name ~ variable, mean)

# Making a long resultset

set1long <- aggregate(value ~ Subject_ID + Activity_name + variable, data=set1melted, mean)

set1long <- aggregate(value ~ variable + Activity_name + Subject_ID, data=set1melted, mean)


# Pooling long resultset with changed columns order

write.table(set1long[, c(3, 2, 1, 4)], 'resultset_long.txt', row.name=FALSE)
