#R File for project
#how to get data file 
#how to get variables from data

#Models
#Age
linearpriceage = lm(Price~Age, data=train)
mae(predict(linearpriceage,test)-test$Price) #=7485.699

logpriceage = lm(log(Price)~Age, data=train)
mae(exp(predict(logpriceage,test))-test$Price) #= 7226.351

#Mileage
linearmile = lm(Price~Mileage, data= train)
mae(predict(linearmile,test)-test$Price) #= 7619.95

logmile = lm(log(Price)~Mileage, data= train)
mae(exp(predict(logmile,test))-test$Price) #= 7310.561

loglogmile = lm(log(Price)~log(Mileage), data= train) 
mae(exp(predict(loglogmile,test))-test$Price) #= 7929.095

#Both 
linearboth=  lm(Price~Mileage+Age,data=train)
mae(predict(linearboth,test)-test$Price) #= 7409.80

logboth = lm(log(Price)~Mileage+Age,data=train)
mae(exp(predict(logboth,test))-test$Price) #= 7159.625

loglogboth = lm(log(Price)~log(Mileage)+Age,data=train)
mae(exp(predict(logboth,test))-test$Price) #= 7201.121
