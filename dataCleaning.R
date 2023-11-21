if(!file.exists("./data")){dir.create("./data")}
fileurl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
zipA<-download.file(fileurl,destfile = "./data/archivo.zip",mode="wb")
unzip(zipfile = "./data/archivo.zip")

#primera lectura
tb<- read.csv("./data/household_power_consumption.txt",sep=";",nrows = 100,na.strings = "?")
#calculo el tamaño en Gb
t<- (((20752259*9*8)/2^20)/2^10)
ramNe<- (t*2) + t
ramNe

clases<-sapply(tb,class)
clases


#leo las lineas
lines1<-readLines("./data/household_power_consumption.txt")
coord<-coord<-grep("^(2/2/2007|1/2/2007)",lines1)
minx<-min(coord)
maxx<- max(coord)
coord
#ya tengo todos mis datos
library(data.table)
tb<- read.table(text=lines1[minx:maxx],na.strings = "?",header=FALSE,sep=";")
namestb<-strsplit(lines1[1],";")
names(tb)<-namestb[[1]]

#change de type date to date 
tb$Date<-as.Date(tb$Date,"%d/%m/%Y")
library(lubridate)
