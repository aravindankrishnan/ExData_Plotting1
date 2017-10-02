## Exploratory Data Analysis Week 1 Assignment

## Preparation of Data file - File is already downloaded to Desktop - Load into R
## Use fread for reading large dataset
## Use na.strings parameter as "?" to convert all "?" into NA
hpc <- fread("~/R/Exploratory Data Analysis/Week 1 Peer Assignment/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = c("?"))

## Convert Date Column from character to Date
## Apply teh format of Date as in file to read the format from DD/MM/YYYY into standard YYYY-MM-DD
hpc$Date <- as.Date(hpc$Date, format="%d/%m/%Y")

## Now Subset the main data for Dates which are 2007-02-01 and 2007-02-02
hpcsub <- subset(hpc, hpc$Date %in% c(as.Date("2007-02-01"), as.Date("2007-02-02")))

## Now the data set for plotting graphs is ready

## Question 1 - Plot a Histogram of Global Active Power

# Set global parameter to show only 1 plot
par(mfrow=c(1,1))

# Plot Histogram
hist(hpcsub$Global_active_power, col ="red", main="Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")

# Copy plot from screen to png
dev.copy(png, file = "Plot1.png")
# Close file to save plot to file.
dev.off()