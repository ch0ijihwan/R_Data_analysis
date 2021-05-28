library(Rtsne)
library(ggplot2)


ds <- iris[,-5]               # 품종 정보 제외


## 중복 데이터 제거
dup = which(duplicated(ds)) # duplicated -> 중복된 값 찾기
dup                           # 143번째 행 중복
ds <- ds[-dup,]               # 중복된 행 제거

ds.y <- iris$Species[-dup]    # 중복을 제외한 품종 정보

## t-SNE 실행
tsne <- Rtsne(ds,dims=2, perplexity=10) #Rtsne는 차원축소 함수.
#dims = 2 -> 2차원
#perplexity -> 차원 축소과정에서 데이터를 샘플링하는데, 샘플의 갯수를 몇개로 할지 지정함.


## 축소결과 시각화 
df.tsne <- data.frame(tsne$Y)
head(df.tsne)
ggplot(df.tsne, aes(x=X1, y=X2, color=ds.y)) + 
  geom_point(size=2) 
