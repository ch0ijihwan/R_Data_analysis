library(ggplot2)

ggplot(iris, aes(x=Sepal.Width, fill=Species, color=Species)) +
  geom_histogram(binwidth = 0.2, position="dodge") +
  theme(legend.position="top")

#fill -> 각각의 데이터를 채우는 것들은 품종으로 한다.
#position -> 3개의 품종의 히소트그램이 하나의 그래프에 작성된다. -> 이때 position은 동일 
#구간의 막대들을 어떻게 그릴지를 지정하는데, "dodge"는 막대들을 겹치지 않고 병렬로 그리도록
#지정해 주는 것이다.