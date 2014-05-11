# e here refers to the data.frame saved at electric.rds - see project guide for more details
plot1 <- function(e){
  png(file='plot1.png')
  hist(as.numeric(e$Global_active_power), main="Global active power", xlab="Global active power (kilowatts)", col='red')
  #print(paste0('Saving plot 1 at: ', getwd(), '/', 'plot1.png')
  dev.off()
}