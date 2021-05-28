# 다중변수 자료의 탐색

# 01. 산점도

# 다중변수 자료 : 변수가 2개 이상인 자료
#산점도 : 2개의 변수로 구성된 자료의 분포를 알아보는 그래프.

#코드 6-1
wt <-mtcars$wt                  #중량 자료
mpg <- mtcars$mpg              # 연비 자료
plot(wt, mpg,                  
     main="중량 - 연비 그래프",  
     xlab="중량",               
     ylab="연비",          
     col="red",                 #point의 color
     pch=17)                     #point의 종류



#여러 변수들 간의 산점도
#코드 6-2

vars <- c("mpg","disp","drat","wt")    # 대상 변수
target <- mtcars[,vars]
head(target)
pairs(target, main = "Multi plots")   #대상 데이터들의 값들을 묶어줌.



#그룹 정보가 있는 두 변수의 산점도

# 코드 6-3
iris.2 <- iris[,3:4]                # 데이터 준비
point <- as.numeric(iris$Species)   # 점의 모양  # as. numeric는 그룹들에 숫자 라벨링 해줌

point                               # point 내용 출력
color <- c("red","green","blue")    # 점의 컬러
plot(iris.2, 
     main="Iris plot",
     pch=c(point),
     col=color[point]) 


#02. 상관 분석
# 상관 분석과 상관계수
# - 자동차의 중량이 커지면 연비는 감소하는 추세.
# 추세의 모양이 선 모양이어서 중량과 연비는 '선형적 관계'에 있다고 표현
# 선형적 관계라고 해도 강한 선형적 관계가 있고 약한 선형적 관계도 있음


# 상관 분석 : 얼마나 선형성을 보이는지 수치상으로 나타낼 수 있는 방법.


# 코드 6-4

  
   
beers = c(5,2,9,8,3,7,3,5,3,5)                 # 자료입력
bal <- c(0.1,0.03,0.19,0.12,0.04,0.0095,0.07,  # 자료 입력
         0.06,0.02,0.05)
tbl <- data.frame(beers,bal)                   # 데이터 프레임 생성
tbl                                
plot(bal~beers,data=tbl)                       # 산점도 beers 별로 bal를 나눔
res <- lm(bal~beers,data=tbl)                  # 회귀식 도출
abline(res)                                    # 회귀선 그리기
cor(beers,bal)                                 # 상관계수 계산


#  코드 6-5

cor(iris[,1:4]) # 4개 변수 간 상관성 분석


#03 .선그래프

# 코드 6-6
month = 1:12                             #
late  = c(5,8,7,9,4,6,12,13,8,6,6,4)     # 자료입력
plot(month,                              # x data
     late,                               # y data
     main="지각생 통계",                 # 제목
     type= "l",                          # 그래프의 종류 선택(알파벳) # l, b, s, o 가능
     lty=1,                              # 선의 종류 선택
     lwd=1,                              # 선의 굵기 선택
     xlab="Month",                       # x축 레이블
     ylab="Late cnt"                     # y축 레이블
)

#복수의 선 그래프
#코드 6-7

month = 1:12
late1  = c(5,8,7,9,4,6,12,13,8,6,6,4)
late2  = c(4,6,5,8,7,8,10,11,6,5,7,3)
plot(month,                                # x data
     late1,                                # y data
     main="Late Students",
     type= "b",                            # 그래프의 종류 선택
     lty=1,                                # 선종류
     col="red",                            # 선의 색
     xlab="Month ",                        # x 레이블
     ylab="Late cnt",                      # y 레이블
     ylim=c(1, 15)                         # y축 값의 (하한, 상한)
)
lines(month,                               # x data
      late2,                               # y data
      type = "b",                          # 선 종류
      col = "blue")                        # 선의 색 선택



library(mlbench)
data(BostonHousing)

head(BostonHousing)

myds <-BostonHousing[,c("cr")]