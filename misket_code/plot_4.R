#please run project_data.R before running this plotting code. 

date <- dt3[,1]
gap <- dt3[,2]
grp <- dt3[,3]
vlt <- dt3[,4]
sm1 <- dt3[,6]
sm2 <- dt3[,7]
sm3 <- dt3[,8]

windows()

par(mfrow = c(2, 2), mar = c(4,4,1,1))

plot(date, gap, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

plot(date, vlt, type = "l", ylab = "Voltage", xlab = "datetime")

yl <- c(0, max(sm1))
plot(date, sm1, ylim = yl, type = "l", xlab = "", ylab = "Energy sub metering")
lines(date, sm2, type = "l", col = 2)
lines(date, sm3, type = "l", col = 4)
legend("topright", names(dt3)[6:8], lty = 1, col = c(1, 2, 4), cex = .6)

plot(date, grp, type = "l", ylab = "Global Reactive Power", xlab = "datetime")

dev.copy(png,filename="plot_4.png", height = 480, width = 480,bg="white")
dev.off()
