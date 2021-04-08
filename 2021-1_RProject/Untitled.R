norow <- nrow(iris)
dsv <- c()
for(i in 1:norow){ # 처음 부터 끝 행 까지
  if(iris$Petal.Length[i] > 1.5){ # 꽃잎의 길이에 따라 레이블 결정
   dsv[length(dsv)+1] <- iris$Petal.Length[i]
   }
}
print(dsv)

