plot2 <- function(e){
  print('huh?')
  png(file='plot2.png')
  with(e, plot(dt, Global_active_power, 
               type='l', xlab="", ylab="Global active power (kilowatts)"))
  dev.off()
}