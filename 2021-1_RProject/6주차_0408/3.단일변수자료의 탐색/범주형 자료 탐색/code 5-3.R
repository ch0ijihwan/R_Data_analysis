# 원그래프 작성

favorite <- c('WINTER', 'SUMMER','SPRING', 'SUMMER', 'SUMMER','FALL','FALL',
              'SUMMER','SPRING','SPRING')


ds <-table(favorite)
ds
pie(ds, main='favorite season') # favorite season 이라는 이름으로 원 그래프 출력

