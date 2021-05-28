head(mtcars)
agg <- aggregate(mtcars, by=list(cyl=mtcars$cyl,  #cyl과 vs를 기준으로 최대값을 보여줘.
                                 vs=mtcars$vs),FUN=max)#최댓값
agg

mtcars
