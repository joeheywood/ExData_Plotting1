plot3 <- function(e){
  png(file='plot3.png')
  with(e,{ 
    plot(dt, Sub_metering_1, main = "", type = "n", ylab='Energy sub metering', xlab="")
    lines(dt, Sub_metering_1,type = "l")
    lines(dt, Sub_metering_2,type = "l", col="red")
    lines(dt, Sub_metering_3,type = "l", col="blue")
    legend("topright", legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty=1, col=c('black', 'red', 'blue'))
  })
  dev.off()
}