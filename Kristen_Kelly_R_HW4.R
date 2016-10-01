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
x1<-0.1
x2<-0.2
z<-seq(3,36,by=3)
y<-seq(1,34,by=3)
a<-c((x1^z)*(x2^y))
a


#Part b
k<-seq(1,25,by=1)
z<-c((2^k)/k)
z


#Problem Number 4
#Part a
i<-seq(10,100,by=1)
z<-sum((i^3)+(4*(1^2)))
z

#Part b
i<-seq(1,25,by=1)
z<-sum((2^i/i)+((3^i)/(i^2)))
z


#Problem Number 5
#Part a
labeln<-paste0(c(rep("label ",30)),1:30, collapse=", ")
labeln


#Part b
fn<-paste0(c(rep("fn",30)),1:30,collapse=", ")
fn


#Problem Number 6
set.seed(50)
xVec<-sample(1:999,250,replace=T)
yVec<-sample(0:999,250,replace=T)

#Part a
x<-xVec
y<-yVec
z<-c((y[2:235])-(x[1:234]))
z


#Part b
d<-c((y[1:234])/(x[2:235]))
d

#Part c






































