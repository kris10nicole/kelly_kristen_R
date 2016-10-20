#Homework Number 5
#I learned from the previous homework assignments that I was putting the comments in the wrong
#area, so I made sure I corrected my prior mistakes on this homework

#We need to utilize ggplot2 for this homework so we download it buy using the following command
require(ggplot2)

DataFrame_Input <-function(x)
  #I created a function DataFrame_Input(), which accepts any dataframe as a parameter
  #Parameter: x, which is a DataFrame
  #The function will produce all methods and attributes of the DataFrame
  {
   methods(class=x)
   attributes(x) #This gathers the attributes within the DataFrame
   }

data("diamonds")
DataFrame_Input(diamonds[1:20,])  #Here is a sample of rows one through 20, including the headers


#For problem number 2, we want to write a program that will determine how many rows are in the
#DataFrame
  
CountRows <-function(x)
    #I created a function CountRows(), which accepts any dataframe as a parameter
    #Parameter: x, which is a DataFrame
    #The function will produce the number of rows DataFrame
  {
    nrow(x) #This will produce a number, n, for each row within x
  }

data("diamonds")
CountRows(diamonds)



#For problem number 3 we want to have a program extract the column names from a DataDrame 
#and print the names of the columns (one per line) to the console.

ColumnNames <-function(x)
  #I created a function ColumnNames(), which accepts any dataframe as a parameter
  #Parameter: x, which is a DataFrame
  #The function will produce the names of the columns, one per line
  
  {
    cat(ColumnNames(x), sep="\n")   #We use the separater \n to make a new line after the columns are categorized
  }

data("diamonds")
ColumnNames(diamonds)



#For problem 4 we want to have a program determine the type of each column 
#(numeric, factor, logical, etc.), and print the results to the console.


ColumnTypes <-function(x)
  #I created a function ColumnTypes(), which accepts any dataframe as a parameter
  #Parameter: x, which is a DataFrame
  #The function will specify the types of columns
  {  
    lapply(x, class)  #This allows us to create a list of equal length to x
  }                   #It tells us the type of columns in x

data("diamonds")
ColumnTypes(diamonds)


#For problem 5, we want to have a program loop through any DataFrame and calculate the mean of
#every numeric column. We will also label the output with the name of the column.
  
MeanColumns <-function(x)
  #I created a function MeanColumns(), which accepts any dataframe as a parameter
  #Parameter: x, which is a DataFrame
  #The function will produce the mean for any numeric column
  {
    NumericColumnss <-x[sapply(x, is.numeric)]   #I did a lot of research and found that sapply() is a function that will find numeric columns; we use x to specifiy to look in the DataFrame
    MeansData(NumbericColumns) #I created a function MeansData that will calculate the mean of each numeric column found by using the function NumericColumns
  }

data("diamonds")
MeanColumns(diamonds)



#For problem number 6, we want to have a program loop through any DataFrame and create a frequency
#table for every factor column. We will also Label the output with the name of the column.

FrequencyTable <-function(x)
  #I created a function FrequencyTable(), which accepts any dataframe as a parameter
  #Parameter: x, which is a DataFrame
  #The function will produce a frequency table for any factor column
  {
    FactorColumns <-x[sapply(x, is.factor)]   #We will use the sapply() function again as it will tell us which columns in x are factor columns columns.The [] lets us print the ones that are factor columns and discard the others (per my research on R)
    FrequencyTableSummary(FactorColumns)   #Here I created a function FrequencyTable Summary, which will create a frequency table for the factors
  }

data("diamonds")
FrequencyTable(diamonds)



#For problem number 7, we want to have a program loop through any DataFrame and determine the 
#number of rows containing NAs in each column 
#We will also determine the percentage of rows containing an NA in any of the columns
  
FindNAs <-function(x)
  #I created a function FindNAs(), which accepts any dataframe as a parameter
  #Parameter: x, which is a DataFrame
  #The function will produce the number of rows containing an "NA"
  #in each column, it will also calculate the percentage of rows containing an "NA"
  {
    A <-sum(rowSums(is.na(x))==ncol(x)) #Here we are saying if there are any NAs in the columns then sum the rows
    #Per research, rowSums is a built in function in R which will allow us to sum rows
    #is.na() is a built in function in R that allows us to identify if there are NA values in a DataFrame
    
    B <-nrow(x)-nrow(na.omit(x))   #Here we calculate the exact number of rows with NA by subtracting it from the total population
    
    print(paste(A, " number of row(s) contain an N/A in each column")) #Here we are printing an output statement along with the number of rows with NAs
    
    paste(100*(B/nrow(x)), sep="", "% of the rows contain N/As in at least one column") #Here we calculate the percentage of rows with NAs by calling the variable b, dividing it by the total number of rows, and multiplying the outcome by 100
  }

data("diamonds")
FindNAs(diamonds)


#For problem number 8, we want to have a program accept any DataFrame as a parameter and
#return a DataFrame that contains each pair of column names and their corresponding Pearson 
#correlation coefficients


PearsonCC <-function(x)
    #I created a function PearsonCC(), which accepts any dataframe as a parameter  
    #Parameter: x, which is a DataFram
    #The function will return a DataFrame that contains each joined pair of column names in 
    #the first column, which will be separated by a hyphen 
    #It will also produce the new strings' corresponding Pearson correlation coefficient 
    #in the adjacent column.

  {
    N <-x[sapply(x,is.numeric)]   #We first want to make sure we are only looking at the numeric columns in the DataFrame, x
    if(ncol(N)>=2)   #Our minimum number of columns will be 2
    {
      A <-combn(colnames(N), 2)   #Here we use the combn() function to combine the columns and we utilize our previous function ColumnNames
      ColumnPairs <-paste(c[1,], c[2,], sep= "-")   #Here we create the variable ColumnPairs and index the rows
      
      B <- cor(N, method="pearson")   #Here we create the correlation coefficients of the columns using the built in method "pearson"; our result is a matrix
      
      CorrelationCoefficient <- B[which(lower.tri(B))]  #Per the directions, we only want the entries
      #from the lower triangle since they correlate to the strings created by ColumnPairs. 
      #We use the [] to put the values in the order in which they appear in ColumnPairs
      
      DataFrame <-data.frame(ColumnPairs,CorrelationCoefficient)   #Here we create a new DataFrame of the results, which we called DataFrame
      return(DataFrame)
    }
    else #If the number of columns does not equal to two, then we print the following:
      print(paste("Invalid"))
  } 


data("diamonds")
PearsonCC(diamonds)


#For problem number 9, we want to have a program create and label a scatter plot for every pair
#of numberic variables. We will add a title to the plot that contains the combined name of 
#the pair from problem 8 and the calculated Pearson correlation coefficient of the pair.

PearsonCC_Plot <-function(x)
  #I created a function PearsonCC_Plot(), which accepts any dataframe as a parameter  
  #Parameter: x, which is a DataFram
  #The function will return a scatter plot for every pair of numeric variables along with a title
  #of the plot.
  {
    PearsonCC(diamonds)  #Here we run the previous program PearsonCC to create the Pearson correlation coefficients
  
    for (i in 1:nrow(PearsonCC(diamonds)))   #We create a for loop to analyze the data created above
      {        
        A <-ggplot(data, aes(x = data[,combos[1,i]], y = data[,combos[2,i]])) + #This is the standard for of a scatterplot...i researched how to put this together and practiced with several versions
        geom_point(size = 0.4) + 
        ggtitle(paste(corr[i,1], corr[i,2], sep ='  r = ')) + xlab(combos[1,i]) + ylab(combos[2,i])
        print(p)
    }
  }

data("diamonds")
PearsonCC_Plot(diamonds)





















