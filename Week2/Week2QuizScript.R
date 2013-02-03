setwd("C:/Users/Bill.cary/Dropbox/Continuing_Education/Coursera/Data_Analysis/Coursera_Data_Analysis/Coursera_Data_Analysis/Week2")

## Question #2
con <- url("http://simplystatistics.tumblr.com/", "r")

simplyStats <- readLines(con, n=150)

char.count <- nchar(simplyStats)
char.count

## Question #3
fileUrl <- "https://dl.dropbox.com/u/7710864/data/csv_hid/ss06hid.csv"
download.file(fileUrl,destfile="./data/idaho_housing_2006.csv")

idaho.housing.2006 <- read.csv("./data/idaho_housing_2006.csv")

count.1million <- length(subset(idaho.housing.2006, idaho.housing.2006$val == 24))
count.1million
idaho.housing.2006
count(idaho.housing.2006, vars="idaho.housing.2006$val")

## Question #5
count(idaho.housing.2006, c("BDS", "RMS"))

## Question #6
agricultureLogical <- idaho.housing.2006[("ACR"==3) & ("ACS"==6),]


download.file("https://spark-public.s3.amazonaws.com/dataanalysis/ss06pid.csv",destfile="./data/population_2006.csv")

population.2006 <- read.csv("./data/population_2006.csv")

new.data <- merge(population.2006, idaho.housing.2006)

dim(new.data)