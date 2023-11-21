library(lubridate)
tb$pa<-paste(tb$Date,tb$Time)
tb$pa<-ymd_hms(tb$pa)

with(tb ,plot(pa,Global_active_power,type="l",xlab="",xaxt="n",ylab="Global Active Power (kilowatts)"))
atForAxis=c(tb$pa[1],tb$pa[1441],tb$pa[length(tb$pa)])
axis(1,at=atForAxis,labels=c("jue","vie","sab") )

dev.copy(png,file="Plot2.png",width=480, height=480)
dev.off()
