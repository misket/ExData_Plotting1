setwd("D:/Dropbox/coursera odevler/stasspec/explore")

list.of.packages <- c("lubridate")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)
library("lubridate")

dt <- read.table("project_data.txt", nrows = 2, sep = ";", header = TRUE)
dt0 <- read.table("project_data.txt", sep = ";", na.strings = "?", colClasses = c("character", rep("NULL", 8)))

names <- names(dt)
dt2 <- read.table("project_data.txt", sep = ";", na.strings = "?", skip = 66637, nrows = 2880, colClasses = c("character", "character", rep("numeric", 7)), col.names = names)
#dt2[,1] <- as.Date(dt2[,1], "%d/%m/%Y")

dtt <- paste(dt2[,1], dt2[,2])
dtt <- dmy_hms(dtt)
dt3 <- dt2
dt3[,1] <- dtt
dt3 <- cbind(dt3[,1], dt3[,3:9])
names(dt3)[1] <- "Date_Time"
#dtt <- strptime(dtt, "%d/%m/%Y %H:%M:%S")