idx <- sample(1:nrow(iris), size=50,  #iris중, 전체 행 갯수 만큼 50개 뽑음
              replace = FALSE)
iris.50 <- iris[idx,]      # 50개의 행 추출
dim(iris.50)               # 행과 열의 개수 확인
head(iris.50)
