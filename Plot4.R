## Question 4 - Plot 4 graphs
par(mfrow=c(2,2))
# Graph 1 Top Left
plot(hpcsub$DateTime, hpcsub$Global_active_power, pch=20, type = "n", xlab = "", ylab = "Global Active Power (kilowatts)")
lines(hpcsub$DateTime, hpcsub$Global_active_power)
# Graph 2 Top Right
plot(hpcsub$DateTime, hpcsub$Voltage, pch=20, type = "n", xlab = "datetime", ylab = "Voltage")
lines(hpcsub$DateTime, hpcsub$Voltage)
# Graph 3 Bottom Left
plot(hpcsub$DateTime, hpcsub$Sub_metering_1, pch=20, type = "n", xlab = "", ylab = "Energy sub metering")
lines(hpcsub$DateTime, hpcsub$Sub_metering_1)
lines(hpcsub$DateTime, hpcsub$Sub_metering_2, col="red")
lines(hpcsub$DateTime, hpcsub$Sub_metering_3, col="blue")
legend("topright", pch = 151, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 0.75, bty = "n")
# Graph 4 Bottom Right
plot(hpcsub$DateTime, hpcsub$Global_reactive_power, pch=20, type = "n", xlab = "datetime", ylab = "Global_reactive_power")
lines(hpcsub$DateTime, hpcsub$Global_reactive_power)
# Copy plot from screen to png
dev.copy(png, file = "Plot4.png")
# Close file to save plot to file.
dev.off()