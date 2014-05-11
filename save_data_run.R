# The functions below can be used to unzip and tidy the data, then run the analysis.
# See project guide for more details.

#dest variable below is the filepath for the zipped download for example:
# C:/Users/Joe/Downloads/exdata-data-household_power_consumption.zip

tidy_save <- function(dest){
  require(data.table)
  tdir <- tempdir()
  unzip(dest, exdir=tdir)
  f <- fread(file.path(tdir, 'household_power_consumption.txt'))
  f <- f[as.Date(f$Date, format=("%d/%m/%Y")) %in% c(as.Date('2007-02-01'),as.Date('2007-02-02')), ] #separate out the dates we want.
  f <- as.data.frame(f) # coerce to data.frame
  x <- paste(f$Date, f$Time) 
  f$dt <- strptime(x, "%d/%m/%Y %H:%M:%S") # add the datetime variable
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