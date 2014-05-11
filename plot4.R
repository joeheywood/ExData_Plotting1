
plot4 <- function(e){
  png(file='plot4.png')
  par(mfrow = c(2, 2), mar = c(4, 4, 3, 4), oma = c(1, 1, 2, 0))
  with(e,{
    plot(dt, Global_active_power, type='l', xlab="", ylab="Global active power")
    plot(dt, Voltage, type='l', xlab="datetime", ylab="Voltage")
    plot(dt, Sub_metering_1, main = "", type = "n", ylab='Energy sub metering', xlab="")
    lines(dt, Sub_metering_1,type = "l")
    lines(dt, Sub_metering_2,type = "l", col="red")
    lines(dt, Sub_metering_3,type = "l", col="blue")
    legend("topright", legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty=1, col=c('black', 'red', 'blue'), bty = "n")
    plot(dt, Global_reactive_power, type='l', xlab="datetime", ylab="Global reactive power")
  })
  dev.off()
}