#Homework Assignment Number 4
#Problem Number 1
#Part a
#Here we need to create a vector (1,2,3,...,19,20)
a<-c(1:20)
a

#Part b
#Here we need to create a vector (20,19,...,3,2,1)
b<-c(20:1)
b

#Part c
#Here we want to join the above vectors, a and b, to create a new vector c
a1<-c(19:1)
c<-c(a,a1)
c

#Part d
#Here we want to assign the vector (4,6,3) to the name tmp
tmp<-c(4,6,3)
tmp

#Part e
#Here we want to repeat tmp where there are 10 occurrences of 4
rep(tmp,10)

#Part f
#Here we want to repeat tmp where there are 11 occurrences of 4, 10 occurrences of 6, and 10 occurrences of 3
rep(tmp,10,31)

#Part g
#Here we want to repeat tmp where there are 10 occurrences of 4, 20 occurrences of 6, and 30 occurrences of 3
rep(tmp,c(10,20,30))

#Problem Number 2
#Here we want to create a vector of the values of e^x*cos(x) at x=3,3.1,3.2,...,5.9,6
x<-seq(3,6,by=.1)
y<-exp(x)*cos(x)
y


#Problem Number 3
#Part a
#Below I am designating the value 0.1 to x1 and 0.2 to x2
x1<-0.1	
x2<-0.2
#Below I am creating vector sequences: z is a sequence from 3 to 36 by a count of 3 and y is a sequence from 1 to 34 by a count of 1
z<-seq(3,36,by=3)
y<-seq(1,34,by=3)
#Below I created a vector that takes takes the vector x1 to the power of vector z and multiplies it by the vector x2 taken to the power of vector y
a<-c((x1^z)*(x2^y))	
a


#Part b
#Below I created a sequence from 1 to 25 by a count of 1 and assigned it to the variable k
k<-seq(1,25,by=1)
#Below I created a vector that takes 2 raised to each value of k and divides it by k and assigned it to the variable z
z<-c((2^k)/k)
z


#Problem Number 4
#Part a
#First we need to create the vector i, which is a sequence from 10 to 100 by a count of 1
i<-seq(10,100,by=1)
#Below I used the sum function to sum the total of i raised to the 3rd power plus 4 times i squared; I assigned it to the variable z
z<-sum((i^3)+(4*(i^2)))
z

#Part b
#I followed the same steps as part a above by creating a vector i, which is a sequence from 1 to 25 by a count of 1
i<-seq(1,25,by=1)
Below I used the sum function to sum the total of 2 raised to the i divided by i with 3 raised to the i divided by 1 squared; I assigned this to the variable z
z<-sum((2^i/i)+((3^i)/(i^2)))
z


#Problem Number 5
#Part a
#Here I used the paste function to paste the values 1 through 30 after the string "label"; I used the collapse function to add the comma and space to separate the text
labeln<-paste0(c(rep("label ",30)),1:30, collapse=", ")
labeln


#Part b
#Here I used the paste function to paste the values 1 through 30 after the string "fn"; I used the collapse function to add the comma and space to separate the text
fn<-paste0(c(rep("fn",30)),1:30,collapse=", ")
fn


#Problem Number 6
#The below functions will all restate the following to make the second part of the program work
#We will restate: set.seed(50), xVec<-sample(1:999,250,replace=T), and yVec<-sample(1:999,250,replace=T)
#Part a
set.seed(50)
xVec<-sample(1:999,250,replace=T)
yVec<-sample(0:999,250,replace=T)

x<-xVec
y<-yVec
z<-c((y[2:235])-(x[1:234]))
z


#Part b
set.seed(50)
xVec<-sample(1:999,250,replace=T)
yVec<-sample(0:999,250,replace=T)

x<-xVec
y<-yVec
z<-c((sin(y[1:234]))/(cos(x[2:235])))
z


#Part c
set.seed(50)
xVec<-sample(1:999,250,replace=T)
yVec<-sample(0:999,250,replace=T)

x<-xVec
y<-yVec
i<-c(1:248)
z<-x[i]+2*x[i+1]-x[i+2]
z

#Part d
set.seed(50)
xVec<-sample(1:999,250,replace=T)
yVec<-sample(0:999,250,replace=T)

x<-xVec
y<-yVec
z<-sum((exp(x[2:235]))/(x[1:234]+10))
z



#7
#The below functions will all restate the following to make the second part of the program work
#We will restate: set.seed(50), xVec<-sample(1:999,250,replace=T), and yVec<-sample(1:999,250,replace=T)
#Part a
#Below we find all the values in yVec that are greater than 600
set.seed(50)
yVec<-sample(0:999,250,replace=T)

y<-yVec
a<-y[y>600]
a


#Part b
#Below we find the index positions in yVec of the values that are greater than 600
set.seed(50)
yVec<-sample(0:999,250,replace=T)

y<-yVec
b<-which(y>600)
b


#Part c
#Below we find the same index positions in xVec as found in part b
set.seed(50)
xVec<-sample(1:999,250,replace=T)
yVec<-sample(0:999,250,replace=T)

x<-xVec
y<-yVec
c<-xVec[y>600]
c


#Part d
set.seed(50)
xVec<-sample(1:999,250,replace=T)
yVec<-sample(0:999,250,replace=T)

x<-xVec
y<-yVec
d<-sqrt(abs(x-mean(x)))
d

#Part e
#Here we find the amound of values in yVec that are within 200 of the maximum value of the terms in yVec
set.seed(50)
xVec<-sample(1:999,250,replace=T)
yVec<-sample(0:999,250,replace=T)

x<-xVec
y<-yVec
e<-sum(y>max(y)-200)
e

#Part f
#Here we find the amount of numbers in xVec that are divisible by two
set.seed(50)
xVec<-sample(1:999,250,replace=T)
yVec<-sample(0:999,250,replace=T)

x<-xVec
y<-yVec
f<-sum(x%%2==0)
f


#Part g
#Here we want to sort the numbers in xVec in the order of increasing values in yVec
set.seed(50)
xVec<-sample(1:999,250,replace=T)
yVec<-sample(0:999,250,replace=T)

x<-xVec
y<-yVec
g<-x[order(y)
g


#Part h
#Here we pick out the elemnts in xVec that are in the positions 1,4,7,10,13,...
set.seed(50)
xVec<-sample(1:999,250,replace=T)
yVec<-sample(0:999,250,replace=T)

x<-xVec
y<-yVec
i<-c(T,F,F)
h<-y[i]
h



#Part 8
x<-(1+sum(cumprod(seq(2,38,by=2)/seq(3,39,by=2))))
x


	





































