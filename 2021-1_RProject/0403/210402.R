 # 4. 파일 데이터 읽기 / 쓰기

# 4 - 2 파일 데이터 읽기

setwd("/Users/choejihwan/Desktop/3-1/R/2021-1_RProject") # 작업 폴더 지정
air <- read.csv("airquality.csv", header = T)
head(air)

# 4 - 3 파일 데이터 쓰기
setwd("/Users/choejihwan/Desktop/3-1/R/2021-1_RProject") # 작업 폴더 지정
my.iris <- subset(iris,Species = 'Setosa')
write.csv(my.iris,"my_iris.csv",row.names=F)




# 조건문, 반복문, 함수




# 조건문

#1.1 기본 if - else 문

job.type <- 'A'
if(job.type == 'B'){
  bonus <-200
}

  print(bonus)

  
  


  
  # 1.3 다중 if - else 문
  
score <- 85

if(score>90){
  grade<-'A'
} else if (score > 80){
  grage<-'B'
} else if (score > 70){
  grage<-'B'
} else if (score > 60){
  grage<-'B'
  }else {
    grage <-'F'
  }

  print(grage)
  
  
  

# 1.4 조건문에서 논리 연산자의 사용
  
a <- 10
b <- 20

if(a>5 & b>5){
  print(a+b)
}
if(a>5|b>30){
  print(a*b)
}
  
  


# 2. ifelse문
a<-10
b<-20

c<- ifelse(a>b,a,b) # 삼항 연산자 같은거임





# 반복문

# 1.1 for
for( i in 1:5){
  print("*")
}

  
# 1.2
for (i in 6:10){
  print(i)
}
  


# 1.2 반복 변수를 이용한 구구단 출력
for(i in i:9){
  cat('2 *', '-', 2*i,"\n")  # 출력 함수임
}



# 1.4 for안에서 if문의 사용
for(i in 1:20)
{
  if(i%%2 == 0){ # 짝수 출력. %%은 나머지 구하는 연산자
    print(i)
  }
}


# 1.5 1~100 사이의 ㅊ숫자 합 출력

sum <-0
for(i in 1:100){
  sum <- sum +i
}
print(sum)


# 1.6 iris에서 꽃잎의 길이에 따른 분류 작업

norow <- nrow(iris)
mylabel <- c()
for(i in 1:norow){ # 처음 부터 끝 행 까지
  if(iris$Petal.Length[i] <= 1.6){ # 꽃잎의 길이에 따라 레이블 결정
                mylabel[i] <-'L'
  } else if(iris$Petal.Length[i] >= 5.1){
    mylabel[i] <-'H'
  } else {
    mylabel[i]<-'M'
  }
}
print(mylabel)
newds <- data.frame(iris$Petal.Length, mylabel) # 곷잎의 길이와 레이블 결합
head(newds)



#apply() 함수 

#반복 작업을 하는 경우에 씀

#행과 열이 있는 객체를 매개 변수를 받음

apply(iris[,1:4],1,mean)# 1~4열을 하나씩 행방향으로 읽어서 각 행에 대한평균값을 냄.
apply(iris[,1:4],2,mean)# 1~4열을 하나씩 열 방향으로 읽어서 평균값을 냄


# 조건에 맞는 데이터 위치 찾기

score<-c(76,84,69,41,64,56,76,37,31,75,94)
which(score == 69)
which(score>=85)
max(score)
min(score)
which.min(score)

# 응용
which()
score<-c(76,84,69,41,64,56,76,37,31,75,94)
idx<-which(score<=60) #성적이 60이하인 값들 찾아 idx에 
score[idx]<-61
score


idx < -which(score >=80) # 성적인 80이상인 값들의 인덳스
score.high<-score[idx] # 80이상인 값만 추출하여 저장
score.high 

