#Homework Number 6

#Problem Number 1
#This will not be answered since it was assigned to groups E and F

#Probelm Number 2
#Here we want to create a simple scatter plot of Weight ("Carat") and Price using Color as a facet
#We will utilize the diamond data set and ggplot2 packages

require(ggplot2) #This allows us to use the ggplot2 package
require(grid)	#This allows us to use the grid functionality

data("diamonds")

DiamondPlot <-ggplot(diamonds, aes(carat,price)) + labs(title='Diamonds Weight and Price by Color') + theme(plot.title=element_text(size=rel(1.4),colour="blue")) + xlab("weight") + ylab("price") + geom_point(aes(colour=factor(color)))

print(DiamondPlot)


#Problem Number 3
#Here we will remove the non-linearity and replot the data

DiamondPlot_Linear <-ggplot(diamonds,aes(log(carat), log(price))) + labs(title='Diamonds Weight and Price - Linear View') + theme(plot.title=elemnt_text(size=rel(1.6),colour="blue")) + xlab("weight") + ylab("price") + geom_point(aes(colour=factor(color)))

print(DiamondPlot_Linear)


#Problem Number 4
Here we will remove the linear trend and replot the data

CaratPrice_LinearModel <-lm(log(price)~log(carat), data=diamonds)   #The LM function allows us to create a simple linear regression model we take the log of the y-variable and the log of the x-variable
summary(CaratPrice_LinearModel)

ResidualPrice <-resid(CaratPrice_LinearModel) #Here we assign the residual of the linear regression model to residual price so that we can remove it from the data
DiamondPlot_Residual <-ggplot(diamonds,aes(log(carat), ResidualPrice)) + geom_point(aes(colour=factor(color))) + xlabel("Weight") + ylabel("Residual Prices") + labs(title='Diamonds Weight and Price by Color Excluding Residuals') + theme(plot.title=elemet_text(size=rel(1.6),colour="blue")) + theme(legend.position='top')

print(DiamondPlot_Residual)


#Problem Number 5
#Here we utilize the grid package to create an overlay of the three plots from the homework
DiamondPlot_Main <-DiamondPlot_Residual + guides(col=guid_legend(nrow=1)) + theme(plot.title=element_text(size=rel(2.2)))

HistoricalPrice_Plot <-ggplot(diamonds,aes(price)) + geom_histogram(aes(y=..density..,colour=factor(color)),binwidth=50) + theme(axis.title.x=element_blank(),axis.title.y=element_blank(),legend.position='none')
#We print the historical price data

HistoricalCarat_Plot <-ggplot(diamonds,aes(price)) + geom_histogram(aes(y=..density..,colour=factor(color)),binwidth=0.025) + theme(axis.title.x=element_blank(),axis.title.y=element_blank(),legend.position='none')
#We print the histroical carat data

ViewPort1 <-viewport(width=0.5,height=0.2,x=0.265,y=0.15)	#This allows us to display the different grids
ViewPort2 <-viewport(width=0.5,height=0.2,x=0.8,y=0.75)		#This allows us to diplay the different grids

print(DiamondPlot_Main)
print(HistoricalPrice_Plot, vp=ViewPort1)	#Here we display the Historical Price data chart in the first view port grid
print(HistoricalCarat_Plot, vp=ViewPort2)	#Here we display the Historical Cara dat chart in the second view port grid




#Problem Number 6
#Here we use the grid package to create the overlaid plot from the homework

#We will start with creating a few more view ports and add onto what was created in the homework from previous problems
ViewPort3 <-viewport(angle=90,width=0.6,height=0.2,x=0.15,y=0.55)	#Here is the third view port that we angle at 90 degrees position

ViewPort4 <-viewport(width=0.6,height=0.3,x=0.6,y=0.1)	#Here is the fourth view port and we will print a specific dataset to this grid

ViewPort5 <-viewport(width=0.75,height=0.7,x=0.6,y=0.6)	#Here is the fifth view port and we will print a specific dataset to this grid

print(HistoricalPrice_Plot,vp=ViewPort3)	#Here we print the Historical Price data set in the third view point grid
print(HistoricalCarat_Plot,vp=ViewPort4)	#Here we print the Historical Carat data set in the fourth view point grid
print(DiamondPlot_Main,vp=ViewPort5)	#Here we print the maind diamond data set in the fifth, largest, view point grid










