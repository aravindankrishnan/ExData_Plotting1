## Question 3 - Plot a Time series of Energy sub metering for all 3 measures with different colors and legends
# Plot graph
plot(hpcsub$DateTime, hpcsub$Sub_metering_1, pch=20, type = "n", xlab = "", ylab = "Energy sub metering")
lines(hpcsub$DateTime, hpcsub$Sub_metering_1)
lines(hpcsub$DateTime, hpcsub$Sub_metering_2, col="red")
lines(hpcsub$DateTime, hpcsub$Sub_metering_3, col="blue")
legend("topright", pch = 151, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 1.2)
# Copy plot from screen to png
dev.copy(png, file = "Plot3.png")
# Close file to save plot to file.
dev.off()