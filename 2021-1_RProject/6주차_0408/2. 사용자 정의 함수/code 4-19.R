#함수가 반환하는 결과값이 여러 개일 때의 처리

myfunc <-function(x,y){
  val.sum <- x+y
  val.mul <- x*y
  return(list(sum = val.sum, mul = val.mul)) #sum과 mul은 리스트에서 데이터 타입의 이름임.  
}

result <- myfunc(5,8)

s<-result$sum 
m <- result$mul
cat('5+8=',s,'\n')
cat('5*8=',m,'\n')
