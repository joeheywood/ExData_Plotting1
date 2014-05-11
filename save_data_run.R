tidy_save <- function(){
  require(data.table)
  tdir <- tempdir()
  unzip('C:/Users/Joe/Downloads/exdata-data-household_power_consumption.zip', exdir=tdir)
  f <- fread(file.path(tdir, 'household_power_consumption.txt'))
  f <- f[as.Date(f$Date, format=("%d/%m/%Y")) %in% c(as.Date('2007-02-01'),as.Date('2007-02-02')), ]
  f <- as.data.frame(f)
  x <- paste(f$Date, f$Time)
  #save(x, file='thisisbollocks.rda')
  f$dt <- strptime(x, "%d/%m/%Y %H:%M:%S")
  saveRDS(f, 'electric.rds')
}

runAnalysis <- function(){
  source('plot1.R')
  source('plot2.R')
  source('plot3.R')
  source('plot4.R')
  e <- readRDS('electric.rds')
  plot1(e)
  plot1(e)
  plot3(e)
  plot4(e)
}