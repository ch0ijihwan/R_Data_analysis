#1~4 열의 값 중 5보다 큰 값의 행과 열의 위치 

idx <- which(iris[,1:4]>5.0,arr.ind = TRUE) # -> array의 index를 TRUE값으로 보여줘라
idx
# arr.ind = TRUE는 내가 찾고자 하는 값들의 행과 열의 위치를 출력해줌.

idx <- which(iris[,1:4]>5.0)
idx


