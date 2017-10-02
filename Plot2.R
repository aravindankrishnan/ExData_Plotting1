## Question 2 - Plot a Time series of Global Active Power
# Create a Date Time Column using lubridate package - ymd_hms function
hpcsub$DateTime <- ymd_hms(paste(hpcsub$Date, hpcsub$Time))
# Plot Empty graph
plot(hpcsub$DateTime, hpcsub$Global_active_power, pch=20, type = "n", xlab = "", ylab = "Global Active Power (kilowatts)")
# Create the line plot using lines function
lines(hpcsub$DateTime, hpcsub$Global_active_power)
# Copy plot from screen to png
dev.copy(png, file = "Plot2.png")
# Close file to save plot to file.
dev.off()