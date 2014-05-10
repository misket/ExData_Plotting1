## this piece of the code is for setting up the data. all plot codes should be run after runing this one.

#install the lubridate library if not loaded. (will be used to change the data and time class of 1.s and 2nd columns in the data)
list.of.packages <- c("lubridate")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)
library("lubridate")

#to see how the data is constructed we load a bit of it
dt <- read.table("project_data.txt", nrows = 2, sep = ";", header = TRUE)

##i ran this piece of code to see which rows were 1st and 2nd of February. it takes a while so i excluded from the source
#dt0 <- read.table("project_data.txt", sep = ";", na.strings = "?", colClasses = c("character", rep("NULL", 8)))
#dtt0 <- grep("^[1,2]/7/2007", dt2[,1])
#dtt0


names <- names(dt)
dt2 <- read.table("project_data.txt", sep = ";", na.strings = "?", skip = 66637, nrows = 2880, colClasses = c("character", "character", rep("numeric", 7)), col.names = names)

dtt <- paste(dt2[,1], dt2[,2])
dtt <- dmy_hms(dtt)

# create a new data frame to keep the original unchanged
dt3 <- dt2
dt3[,1] <- dtt
dt3 <- cbind(dt3[,1], dt3[,3:9])
names(dt3)[1] <- "Date_Time"
