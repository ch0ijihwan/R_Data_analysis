head(iris)
order(iris$Sepal.Length)
iris[order(iris$Sepal.Length),]                   # 오름차순으로 정렬
iris[order(iris$Sepal.Length, decreasing=T),]     # 내림차순으로 정렬
iris.new <- iris[order(iris$Sepal.Length),]       # 정렬된 데이터를 저장
head(iris.new)
iris[order(iris$Species, -iris$Petal.Length,decreasing=T ),]  # 정렬 기준이 2개
# -가 있는 이유 -> Specise는 내림차순이고, Petal.length는 반대로 오름차순을 하려고. 즉 decreasing의 역연산

