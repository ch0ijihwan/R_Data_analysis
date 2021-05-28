#단일 변수 연속형 자료의 탐색


#히스토그램 : 외관상 막대그래프와 비슷한 그래프로, 연속형 자료의 분포를 시각화 할 때 사용

#코드 5-8

dist <- cars[,2] #자동차 제동거리

hist(dist,
        
     main = "Histogram for 제동거리",        #제목  
     xlab = "제동거리",                       #x축 레이블
     ylab = "빈도수",                        #y축 레이블
     border = "blue",                        # 막대 테두리색
     col = "green",                          #막대색
     las = 2,                                #x 축 글씨방향(0~3)
     breaks = 5                           # 막대 개수 조절
     
     )

#상자그림. 상자그림은 상자 수욤그림으로도 부르며, 사분위수를 시각화하여 그래프 형태로 나타냄.

 

#코드 5-9
dist <- cars[,2]
boxplot(dist,main="자동차 제동거리")
  
#코드 5 -10
boxplot.stats(dist)

#$stats
#[1]  2 26 36 56 93  최소, 1사분위, 중앙값, 3사분위, 최댓값

#$n
#[1] 50               관측 값의 개수

#$conf
#[1] 29.29663 42.70337    중앙 값의 신뢰구간

#$out
#[1] 120                  특이 값ㅌ 


#코드 5 - 11
boxplot(Petal.Length~Species, data = iris, main = "품종별 꽃잎의 길이")

# ~ 는 그룹화의 의미.




