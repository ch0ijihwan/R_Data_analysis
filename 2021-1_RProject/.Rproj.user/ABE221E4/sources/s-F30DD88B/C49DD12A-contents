# Section 01 매트릭스
 #매트릭스 만들기
z <-matrix(1:20,nrow=4,ncol=5) # 4행 5열로 만들고 1~20까지의 값을 넣어줌
z

z2 <-matrix(1:20,nrow=4,ncol=5,byrow = T) # 4행 5열로 만들고 1~20까지의 값을 넣어줌
#행 방향으로 트루. 
z2


x <- 1 : 4 
y<- 5:8
z<-matrix(1:20,nrow=4,ncol=5)

m1 <- cbind(x,y) #x와 y를 열 방향으로 결합하여 매트릭스 생성
m1

m2 <- rbind(x,y) #x와 y를 행 방향으로 결합하여 매트릭스 생성
m2

m3 <- rbind(m2,x) #매트릭스 m2와 벡터 x를 행방향으로 결합
m3

m4 <- cbind(z,x) #매트릭스 z와 벡터 x를 열 방향으로 결합
m4





#코드 3-4

z <- matrix(1:20,nrow=4,ncol = 5)
z

z[2,3]
z[1,4]
z[2,]
z[,4]


#코드 3-5
z<-matrix(1:20,nrow=4,ncol=5)
z

z[2,1:3]      #2행의 값 중 1~3열에 있는 값
z[1,c(1,2,4)] #1행의 값 중 1,2,4열에 있는 값
z[1:2,]       #1,2행에 있는 모든 값
z[,c(1,4)]    #1,4열에 있는 모든 값


#4. 매트릭스의 행과 열에 이름 지정
# 4.1 매트릭스의 행과 열에 이름을 지정하는 방법

#코드 3-6
score <- matrix(c(90,85,69,78,85,96,49,95,90,80,70,60), nrow=4,ncol=3)
score
rownames(score) <-c('John','Tom','Mark','Jane')
colnames(score) <-c('English','Math','Science')
score




# Section 02 데이터 프레임
# 데이터 프레임 ㅈ각각의 자료형이 다름. 매트릭스는 자료형이 같지만 데이터 프레임은 다 다름


#2. 데이터프레임 만들기
# 3-8
city<-c("Seoul","Tokyo","washington") # 문자로 이루어진 벡터
rank<- c(1,3,2)                       # 숫자로 이루어진 벡터
city.info <- data.frame(city,rank)    #데이터프레임 생성
city.info                             #출력



#iris 데이터셋
#R에서 제공하는 실습용 데이터셋중의 하나로 데이터 프레임으로 되어 있음


#코드 3-9

iris
iris[,c(1:2)] #꽃받침의 길이와 폭
iris[,c(1,3,5)] #1,3,5열의 모든 데이터
iris[1:5,]
iris[1:5,c(1,3)] #1~5행중 1,3열 데이터


#Section 03
#매트릭스와 데이터프레임 다루기
#1.데이터셋의 기본 정보 확인 

#코드 3-10   중요 !!!!!!!1
dim(iris)         #행과 열의 개수 출력
nrow(iris)        #행의 개수 출력
ncol(iris)        #열의 개수 출력
colnames(iris)    #열 이름 출력,names()와 결과 동일
head(iris)        #데이터셋의 앞부분 일부 출력
tail(iris)        #데이터셋의 뒷부분 일부 출력




# 3-1,2 iris 데이터셋의 추가적인 내용 확인하기 중요!!!!!!!!

#코드 3-11
iris
str(iris)             #데이터셋 요약 정보 보기
iris[,5]              #품종 데이터 보기
unique(iris[,5])      #품종의 종류 보기 (중복 제거)
table(iris[,"Species"]) #품종의 종류별 행의 개수 세기



# 3-2.1 행별, 열별 합계와 평균 계산

# 코드 3-12
colSums(iris[,-5])  #열별 합계    -5는 5를 제외하고를 의미.
colMeans(iris[,-5]) #열별 평균
rowSums(iris[,-5])  #행별 합계
rowMeans(iris[,-5]) # 행별 평균


#3- 2.3 행과 열의 방향 전환

#코드 3-13
z<-matrix(1:20,nrow=4,ncol=5) 
z
t(z) # 행과열 방향 전환


# 3-2.4 조건에 맞는 행과 열의 값 추출

#코드 3-14
IR.1 <- subset(iris,Species=="setosa")
IR.1
IR.2 <- subset(iris,Sepal.Length>5.0 & Sepal.Width>4.0)
IR.2
IR.2[,c(2,4)]
 


# 3-2.5 매트릭스와 데이터 프레임에 산술연산

# 코드 3-15
a <- matrix(1:20,4,5)
b <- matrix(21:40,4,5)
a
b

2*a
b-5
2*a + 3*b

a+b
b-a
b/a
a*b

a<- a*3
b<- 5-b
a
b



# 3-3.1 매트릭스와 데이터프레임의 자료구조 확인

class(iris)   #iris의 자료구조 확인
class(state.x77)  # state.x77 자료구조 확인
is.matrix(iris)   # iris가 매트릭스인지 확인
is.matrix(state.x77)  #state.x77가 매트릭스인지 확인
is.data.frame(state.x77)  # state.x77이 데이터 프레임인지 확인



# 3-3.2 매트릭스와 데이터 프레임의 자료 구조 변환

#코드 3-17
#매트릭스를 데이터 프레임으로 변환
st <-data.frame(state.x77)
head(st)
class(st)

#데이터프레임을 매트릭스로 변환
iris.m <- as.matrix(iris[,1:4]) #헷갈릴 수 있다.!! 중요!!
head(iris.m)
class(iris.m)


#3-4 데이터프레임의 열 추출

#코드 3-18

iris[,"Species"]    #결과 = 벡터, 매트릭스와 데이터프레임 모두 가능
iris[,5]            #결과 = 벡터, 매트릭스와 데이터프레임 모두 가능
iris["Species"]     #결과 = 데이터프레임만 가능
iris[5]             #결과 = 데이터프레임만 가능
iris$Species        #결과 = 벡터, 데이터프레임만 가능

