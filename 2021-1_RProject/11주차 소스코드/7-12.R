subset(iris, Species == "setosa")# 조건 "setosa"를 걸어줌
subset(iris, Sepal.Length > 7.5)
subset(iris, Sepal.Length > 5.1 & 
         Sepal.Width > 3.9)

subset(iris, Sepal.Length > 7.6,
       select=c(Petal.Length,Petal.Width)) # 조건을 두가지를 줄 수도 있음.

#subset는 조건문을 함수형태로 쓰는거임.
