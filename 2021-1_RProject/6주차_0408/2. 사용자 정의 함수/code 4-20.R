setwd("code 4-18") #code 4-19 의 함수 폴더 지정 
source("mydiv.R") # 함수 사용


a<- mydiv(20,4)
b<- mydiv(30,4)
a+b
mydiv(mydiv(20,2),5)