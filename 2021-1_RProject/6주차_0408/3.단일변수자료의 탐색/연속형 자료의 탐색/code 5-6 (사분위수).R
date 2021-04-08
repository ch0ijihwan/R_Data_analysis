#사분위수
# - 주어진 자료에 있는 값들을 크기순으로 나열 했을 때 이것을 4등분 하는 지점에 있는 값들을 의미


mydata <- c(60,62,64,65,68,69,120)
quantile(mydata)
 quantile(mydata,(0:10)/10) #10% 단위로 구간을 나누어 계산
summary(mydata)
