#please run project_data.R before running this plotting code. 

date <- dt3[,1]
gap <- dt3[,2]

plot(date, gap, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.copy(png,filename="plot_2.png",height=480, width=480,bg="white")
dev.off()
