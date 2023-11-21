#histogram

with(tb,hist(Global_active_power,main="Global Active Power",col="red",xlab = "Global Active Power (kilowatts)"))
dev.copy(png,file="Plot1.png",width=480, height=480)
dev.off()
