# Generate vector of income share per deciles for 1990 and 2000
incomeShare_1990 <- c(0,5,5,6,8,10,10,12,14,15,15)
incomeShare_2000 <- c(0,3,4,5,7,7,9,11,15,19,20)

# Calculate cumulative income share for 1990 and 2000
cumsum_1990 <- cumsum(incomeShare_1990)
cumsum_2000 <- cumsum(incomeShare_2000)

# Now let's plot the perfect equality line.
# Use a function based on the length of the provided data
dataLength <- length(incomeShare_1990) - 1
plot(x=(0:dataLength),y=(dataLength*0:dataLength), col="black", type="l", axes=FALSE, ann=FALSE)

# Label x and y axis
axis(1, at=0:dataLength)
axis(2, las=1, at=dataLength*0:100)

# Create box around plot
box()

# Let's plot our two Lorenz Curves
lines(x=(0:dataLength), y=cumsum_1990, type="o", col="blue", pch=20)
lines(x=(0:dataLength), y=cumsum_2000, type="o", col="red", pch=20)

# Label the x and y axes with dark green text
title(xlab="Cumulative deciles of people from lowest to highest incomes", col.lab=rgb(0,0.5,0))
title(ylab="Cumulative % of income earned", col.lab=rgb(0,0.5,0))

# No graph is complete without a title and a legend!
title(main="Graphical Representation of The 1990 And 2000 GINI Coefficients", col.main="black", font.main=4)
legend(0, 100, c("Perfect Equality","1990 Lorenz Curve","2000 Lorenz Curve"), cex=0.8, col=c("black", "blue", "red"), pch=c(-1,20,20), lty=c(1,1,1))