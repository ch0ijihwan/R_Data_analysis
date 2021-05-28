agg <- aggregate(iris[,-5], by=list(iris$Species), #아이리스에서 품종을 뺀 데이터 중에,
                 #Species를 그룹으로 해서 각 그룹의 평균을 냄
                 FUN=mean)
agg
 

agg <- aggregate(iris[,-5], by=list(품종 = iris$Species), #그룹 이름을 품종으로 함.
                 FUN=mean)
agg
