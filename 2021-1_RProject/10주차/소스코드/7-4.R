# for을 이용하는 방법
for (i in 1:ncol(x)) {      #x의 열의 개수
  this.na <- is.na(x[,i]) 
  cat(colnames(x)[i], "\t", sum(this.na), "\n")
}

# apply를 이용한 방법
col_na <- function(y) {
  return(sum(is.na(y)))
}

na_count <-apply(x, 2, FUN=col_na) # 첫번째( ㄷㅔ이터) , 두번째 (1은행 2는 열) 세번째 각각의
#값들을 col_na로 보냄.
na_count
