#막대그래프의 작성

favorite <- c('WINTER', 'SUMMER','SPRING', 'SUMMER', 'SUMMER','FALL','FALL',
              'SUMMER','SPRING','SPRING')


ds <-table(favorite)
ds
barplot(ds, main='favorite season') # favorite season 이라는 이름으로 막대그래프 출력

 