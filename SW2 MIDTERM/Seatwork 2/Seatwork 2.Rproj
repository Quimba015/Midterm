dotosot<-read.csv("midetrmseatwork_data.csv")

##Task 1
subset_data <- function(doto,min,max){
  wind <- ifelse(doto$Ozone>min & doto$Temp>max,doto$Wind,NA)
  mean(wind,na.rm = TRUE)
}
subset_data(dotosot,25,70)


##Task 2
MeanFunction <- function(doto,Month,Day){
  temp <- 0
  for (element in 1:nrow(doto)) {
    temp[element]<- ifelse(doto[element,5]==Month & doto[element,6]==Day,doto[element,4],NA)
  }
  mean(temp,na.rm = TRUE)
}
MeanFunction(dotosot,9,8)

##Task 3
Min <- function(doto,Month){
  y <- 0
  for (row in 1:nrow(doto)) {
    y[row]<- ifelse(doto[row,5]==Month,doto[row,1],NA)
  }
  min(y,na.rm = TRUE)
}
Min(dotosot,5)
Min(dotosot,6)
Min(dotosot,7)
Min(dotosot,8)
Min(dotosot,9)
