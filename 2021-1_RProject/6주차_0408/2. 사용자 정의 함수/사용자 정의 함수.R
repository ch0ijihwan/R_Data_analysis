#Section4 사용자 정의 함수.
  # 사용자 정의 함수 만들기
  # R은 사용자들도 자신만의 함수를 만들어 사용할 수 있는 기능을 제공하는데, 
  #이를 사용자 정의 함수라고 함.



# code 4- 16
mymax <- function(x,y){
  num.max <- x
  
  if(y>x){
    num.max<-y
  }
  return(num.max)
}

mymax(10,15)

a<- mymax(20,15)
b<- mymax(31,45)
print(a+b)

