#산포
# 산포란 주어진 자료에 있는 값들이 퍼져 있는 정도
# 산포는 수학시간에 배운 분산과 표준편차를 가지고 파악


mydata <- c(60,62,64,65,68,69,120)
var(mydata) # 분산
sd(mydata) # 표준편차
range(mydata) #값의 범위
diff(range(mydata)) # 최댓값 최솟값 차이