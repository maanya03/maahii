Input=("
StudentName   Studentweight
Maahi		  45
Riya		  40
Sonam		  50
Ajay		  60
Disha		  54
")

Data=read.table(textConnection(Input),header=TRUE)
print(Data)
Range of data=range(Data$Studentweight, na.rm=TRUE)
Maximum=max(Data$Studentweight,na.rm=TRUE)
Minimum=min(Data$Studentweight,na.rm=TRUE)
Variance=var(Data$Studentweight,na.rm=TRUE)
Sandard deviation=sd(Data$Studentweight,na.rm=TRUE)
Coefficient of variance.percent=sd(Data$Studentweight,na.rm=TRUE)/Mean of the data=mean(Data$Studentweight,na.rm=TRUE)*100
Maximax-Minimum=(Data$Studentweight,na.rm=TRUE)-min(Data$Studentweight,na.rm=TRUE)



#Custom of function
summarylist=function(x)list(
N.with.NA.removed=length(x[!is.na(x)]),
Count.of.NA=length(x[is.na(x)]),
Mean=mean(x,na.r=TRUE),
Median=median(x,na.rm=TRUE),
Range=max(x,na.rm=TRUE)-min(x,na.rm=TRUE),
Variance=var(x,na.rm=TRUE),
Std.variance=sd(x,na.rm=TRUE),
Coeff.variance.prcnt=sd(x,na.rm=TRUE)/mean(x,na.rm=TRUE)*100,
Std.Error=sd(x,na.rm=TRUE)/sqrt(length(x[!is.na(x)])),
Quantile=quantile(x,na.rm=TRUE)
)
summarylist(Data$Studentweight)



