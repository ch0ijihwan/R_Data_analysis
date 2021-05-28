data <- iris[,-5]

data[3,1] <- 10.1

boxplot(data$Sepal.Length)

head(data)

#아래에 답 작성

out.val <- boxplot.stats(data$Sepal.Length)$out     # 특이값 추출
data$Sepal.Length[data$Sepal.Length %in% out.val] <- NA     # 특이값을 na로 대체(특별연산자)
head(data)
newdata <- data[complete.cases(data),]          # NA가 포함된 행 제거
head(newdata) 
