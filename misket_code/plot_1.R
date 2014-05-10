#please run project_data.R before running this plotting code. 

gap <- dt3[,2]
hist(gap, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = 2)

dev.copy(png,filename="plot_1.png",height=480, width=480,bg="white")
dev.off()
