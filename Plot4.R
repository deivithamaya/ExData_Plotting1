dev.off()
par(mfrow=c(2,2),mar=c(4,4,1,2))
atForAxis=c(tb$pa[1],tb$pa[1441],tb$pa[length(tb$pa)])
with(tb ,{
  #1
  plot(pa,Global_active_power,type="l",xlab="",xaxt="n",ylab="Global Active Power (kilowatts)")
  axis(1,at=atForAxis,labels=c("jue","vie","sab") )
  #2
  plot(pa,Voltage,type="l",xlab="datatime",xaxt="n",ylab="Voltage")
  axis(1,at=atForAxis,labels=c("jue","vie","sab") )
  #3
  atForAxis=c(tb$pa[1],tb$pa[1441],tb$pa[length(tb$pa)])
  with(tb,plot(pa,Sub_metering_1,col="grey",ylim=c(0,38),type="l",ylab="",xaxt="n",mar=c(4,1,1,1),xlab=""))
  par(new=TRUE)
  with(tb,plot(pa,Sub_metering_2,col="red",ylim=c(0,38),type="l",ylab="",xaxt="n",axes=FALSE,xlab=""))
  par(new=TRUE)
  with(tb,plot(pa,Sub_metering_3,col="blue",ylim=c(0,38),type="l",ylab="Energy sub metering",xaxt="n",axes=FALSE,xlab=""))
  axis(1,at=atForAxis,labels=c("jue","vie","sab"))
  legend("topright",lty=1,cex=0.5,col=c("grey","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  #4
  plot(pa,Global_reactive_power,type="l",xlab="datatime",xaxt="n",ylab="Global_reactive_power")
  axis(1,at=atForAxis,labels=c("jue","vie","sab") )
  })
#dev.off()
dev.set(3)
dev.copy(png=4,file="Plot4.png",width=480,height=480)




