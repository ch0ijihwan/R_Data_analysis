#도수분포표의 작성

favorite <- c('WINTER', 'SUMMER','SPRING', 'SUMMER', 'SUMMER','FALL','FALL',
              'SUMMER','SPRING','SPRING')

favorite
table(favorite) #도수분포표 계산

table(favorite)/length((favorite)) #비율 출력