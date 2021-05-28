head(mtcars)
 mosaicplot(~gear+vs, data = mtcars, color=c("green","blue"), 
           main ="Gear and Vs")
 #~gear+vs에서 ~은 모자이크 플롯에서 x축이 되라고 말해주는 것.
 #+는 Y축을 의미. 따라서 gear가 x축이고, vs가 y축이다. 