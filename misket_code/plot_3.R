#please run project_data.R before running this plotting code. 

date <- dt3[,1]
gap <- dt3[,2]
sm1 <- dt3[,6]
sm2 <- dt3[,7]
sm3 <- dt3[,8]

windows()

yl <- c(0, max(sm1))
plot(date, sm1, ylim = yl, type = "l", xlab = "", ylab = "Energy sub metering")
lines(date, sm2, type = "l", col = 2)
lines(date, sm3, type = "l", col = 4)
legend("topright", names(dt3)[6:8], lty = 1, col = c(1, 2, 4), cex = .9)

dev.copy(png,filename="plot_3.png", height = 480, width = 480,bg="white")
dev.off()
